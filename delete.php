<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "college inventory";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}

if (isset($_GET['dsr'])) {

    $dsr_no = mysqli_real_escape_string($conn, $_GET['dsr']);

    // Step 1: Insert into archive table
    $archive_query = "
        INSERT INTO college_inventory_archive
        SELECT * FROM college_inventory_new
        WHERE `DSR No` = '$dsr_no'
    ";

    if (mysqli_query($conn, $archive_query)) {

        // Step 2: Delete from main table
        $delete_query = "
            DELETE FROM college_inventory_new
            WHERE `DSR No` = '$dsr_no'
        ";

        if (mysqli_query($conn, $delete_query)) {
            header("Location: home.php");
            exit;
        } else {
            echo "Error deleting record: " . mysqli_error($conn);
        }

    } else {
        echo "Error archiving record: " . mysqli_error($conn);
    }

} else {
    header("Location: home.php");
    exit;
}
?>
