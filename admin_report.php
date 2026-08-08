<?php
// 1. Database Connection
$host = "localhost";
$user = "root";
$pass = "Root@123";
$db   = "college_inventory";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Database Connection Failed: " . mysqli_connect_error());
}

// 2. Initialize variables
$filter_field = '';
$filter_value = '';
$records = [];

// 3. Handle form submission for filtering
if (isset($_POST['filter'])) {
    $filter_field = $_POST['filter_field'];
    $filter_value = mysqli_real_escape_string($conn, $_POST['filter_value']);

    if (!empty($filter_value)) {
        $query = "SELECT * FROM college_inventory_new 
                  WHERE `$filter_field` LIKE '%$filter_value%' 
                  ORDER BY `Sr No` ASC";
    } else {
        $query = "SELECT * FROM college_inventory_new ORDER BY `Sr No` ASC";
    }
} else {
    $query = "SELECT * FROM college_inventory_new ORDER BY `Sr No` ASC";
}

// 4. Fetch records
$result = mysqli_query($conn, $query);
if ($result) {
    while ($row = mysqli_fetch_assoc($result)) {
        $records[] = $row;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inventory Report - Smart Campus</title>
    <link rel="stylesheet" href="report1.css">

    <script>
        function printRecords() {
            var divContents = document.getElementById("reportTable").outerHTML;
            var printWindow = window.open("", "", "height=600,width=800");
            printWindow.document.write("<html><head><title>Print Report</title></head><body>");
            printWindow.document.write(divContents);
            printWindow.document.write("</body></html>");
            printWindow.document.close();
            printWindow.print();
        }
    </script>
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
            <li><a href="admin_home.php">Home</a></li>
            <li><a href="admin_add.php">Add Item</a></li>
            <li><a href="admin_report.php" class="active">Print</a></li>
            <li><a href="admin_barcode.php">Barcode</a></li>
            <li><a href="admin_qr.php">QR Code</a></li>
             
        </ul>
    </nav>
</header>

<!-- ================= PAGE TITLE ================= -->
<h2 class="page-title">Inventory Report</h2>

<!-- ================= SEARCH / FILTER ================= -->
<div class="search-container">
    <form method="POST" class="filter-form">
        <select name="filter_field" required>
            <option value="">Select Field</option>
            <option value="DSR No" <?php if ($filter_field == 'DSR No') echo 'selected'; ?>>DSR No</option>
            <option value="Item/Commodity Description" <?php if ($filter_field == 'Item/Commodity Description') echo 'selected'; ?>>Item Name</option>
           <!-- <option value="Category" <?php if ($filter_field == 'Category') echo 'selected'; ?>>Category</option>
            <option value="Location" <?php if ($filter_field == 'Location') echo 'selected'; ?>>Location</option>-->
        </select>

        <input type="text" name="filter_value" placeholder="Enter search value"
               value="<?php echo htmlspecialchars($filter_value); ?>">

        <input type="submit" name="filter" value="Search">
        <a href="admin_report.php">Reset</a>
    </form>
</div>

<!-- ================= TABLE ================= -->
<table id="reportTable">
    <tr>
        <th>Sr No</th>
        <th>DSR No</th>
        <th>Floor</th>
        <th>Location</th>
        <th>Item / Commodity Description</th>
        <th>Category</th>
        <th>Serial No</th>
        <th>Vendor Details</th>
        <th>Date of Purchase</th>
        <th>Remark</th>
        <th>Status</th>
    </tr>

    <?php if (empty($records)) { ?>
        <tr>
            <td colspan="11" style="text-align:center;">No records found</td>
        </tr>
    <?php } else {
        foreach ($records as $row) { ?>
            <tr>
                <td><?php echo htmlspecialchars($row['Sr No']); ?></td>
                <td><?php echo htmlspecialchars($row['DSR No']); ?></td>
                <td><?php echo htmlspecialchars($row['Floor']); ?></td>
                <td><?php echo htmlspecialchars($row['Location']); ?></td>
                <td><?php echo htmlspecialchars($row['Item/Commodity Description']); ?></td>
                <td><?php echo htmlspecialchars($row['Category']); ?></td>
                <td><?php echo htmlspecialchars($row['Serial No']); ?></td>
                <td><?php echo htmlspecialchars($row['Vendor details']); ?></td>
                <td><?php echo htmlspecialchars($row['Date of Purchase']); ?></td>
                <td><?php echo htmlspecialchars($row['Remark']); ?></td>
                <td><?php echo htmlspecialchars($row['Status']); ?></td>
            </tr>
    <?php } } ?>
</table>

<!-- ================= PRINT BUTTON ================= -->
<div class="print-btn">
    <button onclick="printRecords()">Print Report</button>
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

        <div>&copy; <strong>CampusCoders</strong>. All Rights Reserved</div>
        <a href="#" style="color:#fff;"></a>
    </center>
</footer>

</body>
</html>
