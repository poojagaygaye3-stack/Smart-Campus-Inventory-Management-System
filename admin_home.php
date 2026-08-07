<?php
// ================= DATABASE CONNECTION =================
$host = "localhost";
$user = "root";
$pass = "Root@123";
$db   = "college_inventory";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Database connection failed");
}

// ================= FILTER SEARCH HANDLING =================
$filter_field = '';
$filter_value = '';

$query = "SELECT * FROM college_inventory_new WHERE 1=1";

if (isset($_POST['filter'])) {
    $filter_field = mysqli_real_escape_string($conn, $_POST['filter_field']);
    $filter_value = mysqli_real_escape_string($conn, $_POST['filter_value']);

    if (!empty($filter_field) && !empty($filter_value)) {
        $query .= " AND `$filter_field` LIKE '%$filter_value%'";
    }
}

$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>College Inventory</title>
<link rel="stylesheet" href="home1.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
    /* ===== ACTION BUTTON CONTAINER ===== */
.action-buttons {
    display: flex;
    gap: 8px;   /* Small space between buttons */
}

/* ===== EDIT BUTTON (Blue Gradient) ===== */
.btn-edit {
    background: linear-gradient(45deg, #007bff, #00c6ff);
    color: #fff;
    padding: 6px 14px;
    text-decoration: none;
    border-radius: 6px;
    font-size: 14px;
    font-weight: 500;
    display: inline-block;
    transition: 0.3s ease;
    box-shadow: 0 3px 6px rgba(0,0,0,0.15);
}

.btn-edit:hover {
    background: linear-gradient(45deg, #0056b3, #0096c7);
    transform: translateY(-2px);
}

/* ===== LOGOUT BUTTON (Red Gradient) ===== */
.nav-logout {
    display: inline-flex;
    align-items: center;
    gap: 8px;

    background: linear-gradient(45deg, #dc3545, #ff6b6b);
    color: #fff !important;

    padding: 6px 14px;
    text-decoration: none;
    border-radius: 12px;
    font-size: 14px;
    font-weight: 500;

    transition: 0.3s ease;
    box-shadow: 0 3px 6px rgba(0,0,0,0.15);
}

/* Hover Effect */
.nav-logout:hover {
    background: linear-gradient(45deg, #a71d2a, #ff4d4d);
    transform: translateY(-2px);
}

/* Icon size */
.nav-logout i {
    font-size: 13px;
}

</style>


<!-- ================= HEADER ================= -->
<header>
    <div class="logo">
        <img src="logo.png" alt="Logo">
        <h1>Smart Campus Inventory</h1>
    </div>

    <nav>
        <ul>
            <li><a href="admin_home.php" class="active">Home</a></li>
            <li><a href="admin_add.php">Add Item</a></li>
            <li><a href="admin_report.php">Print</a></li>
            <li><a href="barcode.php">Barcode</a></li>
            <li><a href="admin_qr.php">QRcode</a></li>
            <li class="nav-right">
    <a href="logout.php" class="nav-logout"
       onclick="return confirm('Are you sure you want to logout?');">
        <i class="fas fa-sign-out-alt"></i>
        Logout
    </a>
</li>
            
        </ul>
    </nav>
</header>

<!-- ================= UPDATED SEARCH / FILTER CONTAINER ================= -->
<div class="search-container">
    <!-- Filter Form -->
    <form method="POST" class="filter-form">
        <select name="filter_field" required>
            <option value="">Select Field</option>
            <option value="DSR No" <?php if($filter_field=='DSR No') echo 'selected'; ?>>DSR No</option>
            <option value="Item/Commodity Description" <?php if($filter_field=='Item/Commodity Description') echo 'selected'; ?>>Item Name</option>
            <!--<option value="Category" <?php if($filter_field=='Category') echo 'selected'; ?>>Category</option>
            <option value="Location" <?php if($filter_field=='Location') echo 'selected'; ?>>Location</option>-->
        </select>

        <input type="text" name="filter_value"
               placeholder="Enter search value"
               value="<?php echo htmlspecialchars($filter_value); ?>">

        <input type="submit" name="filter" value="Search">
        <a href="admin_home.php">Reset</a>
    </form>
</div>

<!-- ================= TABLE ================= -->
<div class="table-container">
<h2 class="page-title">College Inventory</h2>

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
            <a class='btn-edit' href='admin_edit.php?dsr=" . urlencode($row['DSR No']) . "'>Update</a>
            
           
        </div>
    </td>";

    echo "</tr>";
    $sr++;
}
?>
</table>
</div>

<!-- ================= FOOTER ================= -->
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
