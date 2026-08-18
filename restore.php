<?php
$conn = mysqli_connect("localhost","root","","college inventory");

if (!$conn) {
    die("Database connection failed");
}

if (isset($_GET['dsr'])) {

    $dsr_no = mysqli_real_escape_string($conn, $_GET['dsr']);

    // Move record directly
    $move = "INSERT INTO college_inventory_new
             SELECT * FROM college_inventory_archive
             WHERE `DSR No` = '$dsr_no'";

    if (!mysqli_query($conn, $move)) {
        die("Move Error: " . mysqli_error($conn));
    }

    // Delete from archive
    $delete = "DELETE FROM college_inventory_archive
               WHERE `DSR No` = '$dsr_no'";

    mysqli_query($conn, $delete);

    header("Location: home.php");
    exit;
}

header("Location: former_inventory.php");
exit;
?>
