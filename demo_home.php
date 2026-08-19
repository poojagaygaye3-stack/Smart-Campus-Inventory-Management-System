<?php
// 1. Database Connection
$host = "localhost";
$user = "root";
$pass = "";
$db   = "college_inventory_new";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Database connection failed");
}

// 2. Handle search input
$dsr_search = isset($_GET['dsr_no']) ? mysqli_real_escape_string($conn, $_GET['dsr_no']) : '';
$item_search = isset($_GET['item_desc']) ? mysqli_real_escape_string($conn, $_GET['item_desc']) : '';

// 3. Build query
$query = "SELECT * FROM college_inventory_new WHERE 1=1";

if(!empty($dsr_search)){
    $query .= " AND `DSR No` LIKE '%$dsr_search%'";
}
if(!empty($item_search)){
    $query .= " AND `Item/Commodity Description` LIKE '%$item_search%'";
}

$result = mysqli_query($conn, $query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>College Inventory</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>

<header>
    <div class="logo">
        <img src="logo.png" alt="Logo">
        <h1>Smart Campus Inventory</h1>
    </div>

    <nav>
        <ul>
            <li><a href="home.php" class="active">Home</a></li>
            <li><a href="add new.php" >Add Item</a></li>
            <li><a href="report.php">Print</a></li>
            <li><a href="barcode.php">Barcode</a></li>
            <li><a href="qr.php">QRcode</a></li>
            <li><a href="#">Login</a></li>
        </ul>
    </nav>
</header>

<div class="search-container">
    <form method="GET" action="">
        <input type="text" name="dsr_no" placeholder="Search by DSR No" value="<?php echo htmlspecialchars($dsr_search); ?>">
        <input type="text" name="item_desc" placeholder="Search by Item/Commodity Description" value="<?php echo htmlspecialchars($item_search); ?>">
        <button type="submit">Search</button>
        <a href="home.php">Reset</a>
    </form>
</div>

<div class="table-container">
    <h2 class="page-title">College Inventory</h2>

    <table class="inventory-table">
        <tr>
            <?php
            // Table headings
            while ($field = mysqli_fetch_field($result)) {
                echo "<th>{$field->name}</th>";
            }
            ?>
        </tr>

        <?php
        // Table data
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            foreach ($row as $data) {
                echo "<td>$data</td>";
            }
            echo "</tr>";
        }
        ?>
    </table>
</div>
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
        <a href="#" style="color: #fff;">Designed by MCA 1st Year Student</a>
    </center>
</footer>
</body>
</html>
