<?php
// ================= DATABASE CONNECTION =================
$host = "localhost";
$user = "root";
$pass = "";
$db   = "college inventory";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Database Connection Failed: " . mysqli_connect_error());
}

// ================= FETCH EXISTING DATA =================
if (!isset($_GET['dsr'])) {
    header("Location: home.php");
    exit;
}

$dsr_no = trim($_GET['dsr']);
$dsr_no = rtrim($dsr_no, "'");
$dsr_no = mysqli_real_escape_string($conn, $dsr_no);

$fetch_query = "SELECT * FROM college_inventory_new WHERE `DSR No` = '$dsr_no'";
$result = mysqli_query($conn, $fetch_query);

if (mysqli_num_rows($result) < 1) {
    die("Item not found");
}

$row = mysqli_fetch_assoc($result);

// ================= UPDATE LOGIC =================
if (isset($_POST['update'])) {

    $floor = mysqli_real_escape_string($conn, $_POST['floor']);
    $location = mysqli_real_escape_string($conn, $_POST['location']);
    $item_description = mysqli_real_escape_string($conn, $_POST['item_description']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $serial_no = mysqli_real_escape_string($conn, $_POST['serial_no']);
    $vendor_details = mysqli_real_escape_string($conn, $_POST['vendor_details']);
    $date_of_purchase = mysqli_real_escape_string($conn, $_POST['date_of_purchase']);
    $remark = mysqli_real_escape_string($conn, $_POST['remark']);
    $status = mysqli_real_escape_string($conn, $_POST['status']);

    $update_query = "UPDATE college_inventory_new SET
        `Floor` = '$floor',
        `Location` = '$location',
        `Item/Commodity Description` = '$item_description',
        `Category` = '$category',
        `Serial No` = '$serial_no',
        `Vendor details` = '$vendor_details',
        `Date of Purchase` = '$date_of_purchase',
        `Remark` = '$remark',
        `Status` = '$status'
        WHERE `DSR No` = '$dsr_no'";

    if (mysqli_query($conn, $update_query)) {
        $message = "Item Updated successfully!";
        header("Location: edit1.php");
        exit;
    } else {
        $message = "Error updating record: " . mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Item - College Inventory</title>
    <link rel="stylesheet" href="add new1.css">
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
            <li><a href="edit1.php" class="active">Edit Item</a></li>
            <li><a href="report.php">Print</a></li>
            <li><a href="barcode.php">Barcode</a></li>
            <li><a href="qr.php">QRcode</a></li>
        </ul>
    </nav>
</header>

<!-- ================= PAGE CONTENT ================= -->
<h2 class="page-title">Edit Inventory Item</h2>

<?php if (isset($message)) { ?>
    <p class="message" style="color:red;"><?php echo $message; ?></p>
<?php } ?>

<form class="add-form" method="POST">

    <label>DSR No</label>
    <input type="text" value="<?php echo $row['DSR No']; ?>" readonly>

    <label>Floor</label>
    <input type="text" name="floor" value="<?php echo $row['Floor']; ?>" required>

    <label>Location</label>
    <input type="text" name="location" value="<?php echo $row['Location']; ?>" required>

    <label>Item / Commodity Description</label>
    <input type="text" name="item_description"
           value="<?php echo $row['Item/Commodity Description']; ?>" required>

    <label>Category</label>
    <input type="text" name="category" value="<?php echo $row['Category']; ?>" required>

    <label>Serial No</label>
    <input type="text" name="serial_no" value="<?php echo $row['Serial No']; ?>" required>

    <label>Vendor Details</label>
    <input type="text" name="vendor_details"
           value="<?php echo $row['Vendor details']; ?>" required>

    <label>Date of Purchase</label>
    <input type="date" name="date_of_purchase"
           value="<?php echo $row['Date of Purchase']; ?>" required>

    <label>Remark</label>
    <input type="text" name="remark" value="<?php echo $row['Remark']; ?>">

    <label>Status</label>
    <input type="text" name="status" value="<?php echo $row['Status']; ?>">

    <input type="submit" name="update" value="Update Item">
</form>

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
