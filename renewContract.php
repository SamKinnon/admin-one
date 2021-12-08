<?php
include"db.php";
$c_number=$_REQUEST['c_number'];
$c_duration =  $_REQUEST['c_duration'];
$c_date =  $_REQUEST['c_date'];


if (isset($_POST['submit'])) { 
    $filename = $_FILES['c_attachments']['name'];

    // destination of the file on the server
    $destination = 'myfile/' .$filename;

    // the physical file on a temporary uploads directory on the server
    $file = $_FILES['c_attachments']['tmp_name'];
    $size = $_FILES['c_attachments']['size'];

    if ($_FILES['c_attachments']['size'] > 5000000) { // file shouldn't be larger than 1Megabyte
        echo "File too large!";
    } else {
        // move the uploaded (temporary) file to the specified destination
        if (move_uploaded_file($file, $destination)) {
            $sql = "INSERT INTO contracts (c_number,c_duration, c_attachments,c_date)
VALUES ('$c_number', '$c_duration','$filename','$c_date');";

            if (mysqli_query($conn, $sql)) {
                header("Location: dashboard.php?st=success");
            }
        } else {
           echo"try again ";
        }
    }
}
$conn->close();

?>
