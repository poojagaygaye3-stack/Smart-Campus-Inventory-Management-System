<?php
// ------------------- Include Composer Autoload -------------------
require __DIR__ . '/vendor/autoload.php'; // make sure composer autoload exists

use Picqer\Barcode\BarcodeGeneratorPNG;

// ------------------- Database Connection -------------------
$host = "localhost";
$user = "root";
$pass = "";
$db   = "college inventory";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) die("Database connection failed: " . mysqli_connect_error());

// ------------------- Filter Logic -------------------
$filter_field = '';
$filter_value = '';
$records = [];

// Initialize search variables to avoid undefined variable warnings
$dsr_search = isset($_GET['dsr_no']) ? trim($_GET['dsr_no']) : '';
$item_search = isset($_GET['item_desc']) ? trim($_GET['item_desc']) : '';

// Build query based on GET search parameters
$query = "SELECT * FROM college_inventory_new WHERE 1=1"; // base query

if (!empty($dsr_search)) {
    $dsr_safe = mysqli_real_escape_string($conn, $dsr_search);
    $query .= " AND `DSR No` LIKE '%$dsr_safe%'";
}

if (!empty($item_search)) {
    $item_safe = mysqli_real_escape_string($conn, $item_search);
    $query .= " AND `Item/Commodity Description` LIKE '%$item_safe%'";
}

$result = mysqli_query($conn, $query);
if ($result) {
    while ($row = mysqli_fetch_assoc($result)) {
        $records[] = $row;
    }
}

// ------------------- Barcode Generator -------------------
$generator = new BarcodeGeneratorPNG();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DSR No Barcode Report</title>
    <link rel="stylesheet" href="report1.css">
</head>
<body>

<!-- ================= HEADER ================= -->
<header>
    <div class="logo">
        <img src="logo.png" alt="Logo">
        <h1>Smart Campus Inventory</h1>
    </div>

    <nav>
        <ul>
            <li><a href="home.php">Home</a></li>
            <li><a href="add new.php">Add Item</a></li>
            <li><a href="report.php" >Print</a></li>
            <li><a href="barcode.php" class="active">Barcode</a></li>
            <li><a href="qr.php">QRcode</a></li>
             <li><a href="former_inventory.php" >Former Inventory</a></li>
        </ul>
    </nav>
</header>

<!-- ================= PAGE CONTENT ================= -->
<h2 class="page-title">DSR No Barcode Report</h2>

<div class="search-container">
    <form method="GET" action="">
        <input type="text" name="dsr_no" placeholder="Search by DSR No" value="<?php echo htmlspecialchars($dsr_search); ?>">
        <input type="text" name="item_desc" placeholder="Search by Item/Commodity Description" value="<?php echo htmlspecialchars($item_search); ?>">
        <button type="submit">Search</button>
        <a href="barcode.php">Reset</a>
    </form>
</div>

<!-- Barcode Table -->
<table>
    <tr>
        <th>DSR No</th>
        <th>Barcode</th>
    </tr>
    <?php
    if(empty($records)){
        echo "<tr><td colspan='2'>No records found</td></tr>";
    } else {
        foreach($records as $row){
            $dsr_no = htmlspecialchars($row['DSR No']);
            $barcode_data = $generator->getBarcode($dsr_no, $generator::TYPE_CODE_128);
            $barcode_base64 = base64_encode($barcode_data);
            echo "<tr>
                    <td>$dsr_no</td>
                    <td class='barcode'><img src='data:image/png;base64,$barcode_base64'></td>
                  </tr>";
        }
    }
    ?>
</table>

<!-- Print Button -->
<div class="print-btn">
    <button onclick="window.print()">Print</button>
</div>

<!-- ================= FOOTER ================= -->
<footer id="footer">
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
    <a href="#">Designed by MCA 1st Year Student</a>
</footer>

</body>
</html>
