<?php
// ================= DATABASE CONNECTION =================
$host = "localhost";
$user = "root";
$pass = "";
$db   = "college inventory";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Database connection failed");
}

// ================= FETCH ARCHIVED DATA =================
$query = "SELECT * FROM college_inventory_archive";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Former Inventory</title>
<link rel="stylesheet" href="home1.css">
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
            <li><a href="report.php">Print</a></li>
            <li><a href="barcode.php">Barcode</a></li>
            <li><a href="qr.php">QRcode</a></li>
            <li><a href="former_inventory.php" class="active">Former Inventory</a></li>
        </ul>
    </nav>
    <style>
        /* Green Restore Button */
/* Container for spacing */
.action-buttons {
    display: flex;
    gap: 8px;   /* Small space between buttons */
}

/* Restore Button (Green Gradient) */
.btn-restore {
    background: linear-gradient(45deg, #0a952a, #28c76f);
    color: white;
    padding: 6px 14px;
    text-decoration: none;
    border-radius: 6px;
    font-size: 14px;
    font-weight: 500;
    transition: 0.3s ease;
    box-shadow: 0 3px 6px rgba(0,0,0,0.15);
}

.btn-restore:hover {
    background: linear-gradient(45deg, #087a22, #20b45c);
    transform: translateY(-2px);
}

/* Update Button (Blue Gradient) */
.btn-update {
    background: linear-gradient(45deg, #007bff, #00c6ff);
    color: white;
    padding: 6px 14px;
    text-decoration: none;
    border-radius: 6px;
    font-size: 14px;
    font-weight: 500;
    transition: 0.3s ease;
    box-shadow: 0 3px 6px rgba(0,0,0,0.15);
}

.btn-update:hover {
    background: linear-gradient(45deg, #0056b3, #0096c7);
    transform: translateY(-2px);
}
    </style>
</header>

<!-- ================= TABLE ================= -->
<div class="table-container">
<h2 class="page-title">Former Inventory (Archived Items)</h2>

<table class="inventory-table">
<tr>
    <th>Sr No</th>
    <th>DSR No</th>
    <th>Floor</th>
    <th>Location</th>
    <th>Item/Commodity Description</th>
    <th>Category</th>
    <th>Serial No</th>
    <th>Vendor details</th>
    <th>Date of Purchase</th>
    <th>Remark</th>
    <th>Status</th>
    <th>Action</th>
</tr>

<?php
$sr = 1;

if ($result && mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {

        echo "<tr>";
        echo "<td>{$sr}</td>";
        echo "<td>{$row['DSR No']}</td>";
        echo "<td>{$row['Floor']}</td>";
        echo "<td>{$row['Location']}</td>";
        echo "<td>{$row['Item/Commodity Description']}</td>";
        echo "<td>{$row['Category']}</td>";
        echo "<td>{$row['Serial No']}</td>";
        echo "<td>{$row['Vendor details']}</td>";
        echo "<td>{$row['Date of Purchase']}</td>";
        echo "<td>{$row['Remark']}</td>";
        echo "<td>{$row['Status']}</td>";

        echo "<td>
        <div class='action-buttons'>

            <a class='btn-update'
               href='edit_archive.php?dsr=" . urlencode($row['DSR No']) . "'>
               Update
            </a>

            <a class='btn-restore'
               href='restore.php?dsr=" . urlencode($row['DSR No']) . "'
               onclick=\"return confirm('Are you sure you want to restore this item?');\">
               Restore
            </a>

        </div>
      </td>";

        $sr++;
    }
} else {
    echo "<tr><td colspan='12' style='text-align:center;'>No Archived Records Found</td></tr>";
}
?>

</table>
</div>

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
