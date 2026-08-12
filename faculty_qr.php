<?php include 'faculty_header.php'; ?>

<?php
require 'vendor/autoload.php';

use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;
use Picqer\Barcode\BarcodeGeneratorPNG;

// Database connection
$conn = new mysqli("localhost", "root", "", "college inventory");
if ($conn->connect_error) { die("DB Error: " . $conn->connect_error); }

// ------------------- Filter Logic -------------------

// Initialize search variables
$filter_field = isset($_GET['filter_field']) ? trim($_GET['filter_field']) : '';
$filter_value = isset($_GET['filter_value']) ? trim($_GET['filter_value']) : '';

// Base query
$query = "SELECT * FROM `college_inventory_new` WHERE 1=1";

// --- Filter logic ---
if (!empty($filter_field) && !empty($filter_value)) {
    // Split by comma or space for multiple search
    $values = preg_split('/[\s,]+/', $filter_value);
    $safe_values = array_map(function($v) use ($conn) {
        return "'" . mysqli_real_escape_string($conn, $v) . "'";
    }, $values);
    $value_list = implode(',', $safe_values);

    if ($filter_field == 'DSR No' || $filter_field == 'Category' || $filter_field == 'Location') {
        // Exact match
        $query .= " AND `$filter_field` IN ($value_list)";
    } else {
        // Partial match for Item/Commodity Description
        $like_clauses = array_map(function($v) use ($conn, $filter_field) {
            $v_safe = mysqli_real_escape_string($conn, $v);
            return "`$filter_field` LIKE '%$v_safe%'";
        }, $values);
        $query .= " AND (" . implode(' OR ', $like_clauses) . ")";
    }
}

// --- Order by DSR No ascending ---
$query .= " ORDER BY `DSR No` ASC";

// Execute query
$result = $conn->query($query);
if (!$result) { die("Query Error: " . $conn->error); }

// Create folders if not exist
if (!file_exists("qrcodes")) mkdir("qrcodes", 0777, true);
if (!file_exists("barcodes")) mkdir("barcodes", 0777, true);

$generator = new BarcodeGeneratorPNG();
?>
<!DOCTYPE html>
<html>
<head>
<title>Print Labels</title>
<style>
/* === Page & Body === */
@page { margin: 4mm; }
body { font-family: Arial, sans-serif; margin: 0; padding: 0; }

/* ================= SEARCH FORM (ENHANCED + FIELD DROPDOWN) ================= */
.search-form {
    width: 100%;
    display: flex;
    justify-content: center;
    margin: 20px 0;
}
.search-form form {
    display: flex;
    align-items: center;
    gap: 14px;
    width: 92%;
    max-width: 900px;
    background: linear-gradient(135deg, #ffffff, #f6f9ff);
    padding: 14px 18px;
    border-radius: 60px;
    box-shadow:
        0 10px 30px rgba(0, 74, 173, 0.15),
        inset 0 1px 0 rgba(255,255,255,0.6);
    backdrop-filter: blur(6px);
    transition: all 0.3s ease;
}
.search-form form:hover {
    transform: translateY(-2px);
    box-shadow:
        0 14px 40px rgba(0, 74, 173, 0.2),
        inset 0 1px 0 rgba(255,255,255,0.8);
}
.search-form select,
.search-form input[type="text"] {
    flex: 1;
    padding: 12px 18px;
    border: none;
    border-radius: 50px;
    font-size: 0.95rem;
    outline: none;
    background-color: #f2f6ff;
    box-shadow: inset 0 3px 8px rgba(0,0,0,0.06);
    transition: all 0.3s ease;
}
.search-form select:focus,
.search-form input[type="text"]:focus {
    background-color: #ffffff;
    box-shadow:
        0 0 0 3px rgba(0, 74, 173, 0.15),
        inset 0 3px 8px rgba(0,0,0,0.08);
}
.search-form input::placeholder {
    color: #8a9ac4;
    font-weight: 500;
}
.search-form button {
    background: linear-gradient(135deg, #004aad, #0066ff);
    color: #ffffff;
    border: none;
    padding: 12px 26px;
    border-radius: 50px;
    font-weight: 600;
    cursor: pointer;
    letter-spacing: 0.3px;
    box-shadow: 0 6px 18px rgba(0, 74, 173, 0.35);
    transition: all 0.3s ease;
}
.search-form button:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 26px rgba(0, 74, 173, 0.45);
}
.search-form a {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: #004aad;
    font-weight: 600;
    padding: 0 14px;
    border-radius: 40px;
    transition: all 0.3s ease;
}
.search-form a:hover {
    background-color: rgba(0, 74, 173, 0.08);
    color: #0066ff;
}
/* ================= MOBILE RESPONSIVE ================= */
@media (max-width: 768px) {
    .search-form form { flex-wrap: wrap; border-radius: 20px; }
    .search-form select,
    .search-form input[type="text"] { flex: 100%; margin-bottom: 6px; }
    .search-form button,
    .search-form a { width: 100%; justify-content: center; margin-top: 6px; }
}

/* === Sheet Container === */
.sheet {
    margin-left: 25%;
    width: 210mm;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;  /* center labels horizontally */
    gap:2px;                /* spacing between labels */
    page-break-after: always;
}


/* === Individual Label === */
.label {
    width: 100mm;
    height: 44mm;
    border: 1px solid rgba(248, 240, 240, 1);
    display: flex;
    flex-direction: column;
    align-items: center;     /* center content inside label */
    justify-content: flex-start;
    margin: 2mm;
    page-break-inside: avoid;
}


/* === Upper Barcode Section === */
.top-barcode {
    height: 12mm;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: flex-end;
    padding-bottom: 1mm;
    border: none !important;
    box-sizing: border-box;   
}
.top-barcode img { max-height: 12mm; max-width: 98%; }

/* === Lower Section === */
.lower-section { display: flex; height: 32mm; }

.left-qr {
    width: 38mm;
    height: 32mm;
    display: flex;
    justify-content: center;
    align-items: center;
    border-right: 1px solid rgba(248, 240, 240, 1);
}
.left-qr img { max-width: 38mm; max-height: 32mm; }

.right-info {
    width: 62mm;
    height: 32mm;
    font-size: 9px;
    line-height: 1.1;
    padding: 1px 2px;
    overflow: hidden;
}
.right-info strong {
    font-weight: bold;
    font-size: 10px;
    display: block;
}

/* === Print Button === */
.print-btn { text-align: center; margin: 5px; }

@media print {
    .print-btn, .search-form { display: none; }
}
</style>
</head>
<body>

<!-- ================= SEARCH FORM ================= -->
<div class="search-form">
    <form method="GET" action="">
        <select name="filter_field" required>
            <option value="">Select Field</option>
            <option value="DSR No" <?= ($filter_field=='DSR No') ? 'selected' : '' ?>>DSR No</option>
            <option value="Item/Commodity Description" <?= ($filter_field=='Item/Commodity Description') ? 'selected' : '' ?>>Item/Commodity Description</option>
            <!--<option value="Category" <?= ($filter_field=='Category') ? 'selected' : '' ?>>Category</option>
            <option value="Location" <?= ($filter_field=='Location') ? 'selected' : '' ?>>Location</option>-->
        </select>

        <input type="text" name="filter_value" 
               placeholder="Enter value(s), comma or space separated"
               value="<?= htmlspecialchars($filter_value) ?>">

        <button type="submit">Search</button>
        <a href="<?= $_SERVER['PHP_SELF'] ?>">Reset</a>
    </form>
</div>

<!-- Print Button -->
<div class="print-btn">
    <button onclick="window.print()">PRINT</button>
</div>

<!-- ================= LABEL SHEET ================= -->
<div class="sheet">
<?php
$labelsPerPage = 12;
$labelCount = 0;

while($row = $result->fetch_assoc()) {

    $dsr = $row['DSR No'];
    $file = preg_replace('/[^A-Za-z0-9_-]/', '_', $dsr);

    // Full details for QR + Text
    $details = "DSR: {$row['DSR No']}\n"
        . "Floor: {$row['Floor']}\n"
        . "Location: {$row['Location']}\n"
        . "Item: {$row['Item/Commodity Description']}\n"
        . "Category: {$row['Category']}\n"
        . "Serial No: {$row['Serial No']}\n"
        . "Vendor: {$row['Vendor details']}\n"
        . "Purchase Date: {$row['Date of Purchase']}\n"
        . "Remark: {$row['Remark']}\n"
        . "Status: {$row['Status']}";

    $qrPath = "qrcodes/$file.png";
    $barcodePath = "barcodes/$file.png";

    // Generate QR
    if(!file_exists($qrPath)) {
        $qr = new QrCode($details);
        $qr->setSize(130);
        (new PngWriter())->write($qr)->saveToFile($qrPath);
    }

    // Generate Barcode (DSR only)
    if(!file_exists($barcodePath)) {
        file_put_contents($barcodePath,
            $generator->getBarcode($dsr, $generator::TYPE_CODE_128, 2, 30)
        );
    }

    $labelCount++;
?>
<div class="label">
    <div class="top-barcode">
        <img src="<?= $barcodePath ?>" alt="Barcode">
    </div>

    <div class="lower-section">
        <div class="left-qr">
            <img src="<?= $qrPath ?>" alt="QR Code">
        </div>
        <div class="right-info">
            <strong>DSR: <?= htmlspecialchars($row['DSR No']) ?></strong>
            Floor: <?= htmlspecialchars($row['Floor']) ?><br>
            Location: <?= htmlspecialchars($row['Location']) ?><br>
            Item: <?= htmlspecialchars($row['Item/Commodity Description']) ?><br>
            Category: <?= htmlspecialchars($row['Category']) ?><br>
            Serial No: <?= htmlspecialchars($row['Serial No']) ?><br>
            Vendor: <?= htmlspecialchars($row['Vendor details']) ?><br>
            Purchase Date: <?= htmlspecialchars($row['Date of Purchase']) ?><br>
            Remark: <?= htmlspecialchars($row['Remark']) ?><br>
            Status: <?= htmlspecialchars($row['Status']) ?>
        </div>
    </div>
</div>

<?php
    if ($labelCount % $labelsPerPage == 0) {
        echo '</div><div class="sheet">';
    }
}
?>
</div>
<style>
    
/* ================= FOOTER ================= */
#footer {
    background: linear-gradient(135deg, #004aad, #00b4ff);
    color: white;
    padding: 30px 15px;
    margin-top: 40px;
    box-shadow: 0 -4px 15px rgba(0,0,0,0.3);
}

#footer h1 {
    margin-bottom: 10px;
    text-shadow: 2px 2px 8px rgba(0,0,0,0.4);
}

#footer p {
    margin: 5px 0;
}

#footer a {
    color: white;
    text-decoration: none;
    font-weight: 600;
}

#footer a:hover {
    text-decoration: underline;
}

#footer .social-icons img {
    margin: 8px;
    transition: transform 0.3s ease;
}

#footer .social-icons img:hover {
    transform: scale(1.2);
}
</style>
<!-- ================= FOOTER ================= -->
<footer id="footer">
    <center>
        <h1>Smart Campus Inventory</h1>
        <p>Maharashtra, Pune, Koregaon Park 411001</p>
        <p>+91-123-456-7890</p>

        <div class="social-icons">
            <img src="https://cdn-icons-png.flaticon.com/256/2504/2504839.png" width="40">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Facebook_Logo_2023.png/768px-Facebook_Logo_2023.png" width="40">
            <img src="https://i2.wp.com/freepngimg.com/download/logo/69732-logo-facebook-instagram-icone-free-png-hq.png" width="40">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/479px-WhatsApp_icon.png" width="40">
        </div>

        <div>&copy; <strong>Smart Campus Inventory</strong>. All Rights Reserved</div>
        <a href="#" style="color:#fff;">Designed by MCA 1st Year Student</a>
    </center>
</footer>

</body>
</html>
