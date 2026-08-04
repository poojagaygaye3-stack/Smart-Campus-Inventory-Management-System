<?php
// 1. Database connection
$host = "localhost";
$user = "root";
$pass = "";
$db   = "college_inventory_new";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Database Connection Failed: " . mysqli_connect_error());
}

// 2. Handle add form submission
if(isset($_POST['add'])){
    $dsr_no = mysqli_real_escape_string($conn, $_POST['dsr_no']);
    $floor = mysqli_real_escape_string($conn, $_POST['floor']);
    $location = mysqli_real_escape_string($conn, $_POST['location']);
    $item_description = mysqli_real_escape_string($conn, $_POST['item_description']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $serial_no = mysqli_real_escape_string($conn, $_POST['serial_no']);
    $vendor_details = mysqli_real_escape_string($conn, $_POST['vendor_details']);
    $date_of_purchase = mysqli_real_escape_string($conn, $_POST['date_of_purchase']);
    $remark = mysqli_real_escape_string($conn, $_POST['remark']);
    $status = mysqli_real_escape_string($conn, $_POST['status']);

    $query = "INSERT INTO college_inventory_new 
        (`DSR No`, `Floor`, `Location`, `Item/Commodity Description`, `Category`, `Serial No`, `Vendor details`, `Date of Purchase`, `Remark`, `Status`)
        VALUES ('$dsr_no', '$floor', '$location', '$item_description', '$category', '$serial_no', '$vendor_details', '$date_of_purchase', '$remark', '$status')";

    if(mysqli_query($conn, $query)){
        $message = "Item added successfully!";
    } else {
        $message = "Error: " . mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Item - College Inventory</title>
    <link rel="stylesheet" href="add new.css">
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
            <li><a href="add new.php" class="active">Add Item</a></li>
            <li><a href="report.php">Print</a></li>
            <li><a href="barcode.php">Barcode</a></li>
            <li><a href="qr.php">QRcode</a></li>
            <li><a href="#">Login</a></li>
        </ul>
    </nav>
</header>

<!-- ================= PAGE CONTENT ================= -->
<h2 class="page-title">Add New Item to Inventory</h2>

<?php if(isset($message)) { ?>
    <p class="message"><?php echo $message; ?></p>
<?php } ?>

<form class="add-form" method="POST">
    <label>DSR No</label>
    <input type="text" name="dsr_no" required>

    <label>Floor</label>
    <input type="text" name="floor" required>

    <label>Location</label>
    <input type="text" name="location" required>

    <label>Item / Commodity Description</label>
    <input type="text" name="item_description" required>

    <label>Category</label>
    <input type="text" name="category" required>

    <label>Serial No</label>
    <input type="text" name="serial_no" required>

    <label>Vendor Details</label>
    <input type="text" name="vendor_details" required>

    <label>Date of Purchase</label>
    <input type="date" name="date_of_purchase" required>

    <label>Remark</label>
    <input type="text" name="remark">

    <label>Status</label>
    <input type="text" name="status">

    <input type="submit" name="add" value="Add Item">
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
