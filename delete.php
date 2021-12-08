<?php
$c_number = $_REQUEST['c_number'];
include "db.php";
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  
  $sql = "UPDATE contractor SET status='Ended' WHERE c_number='$c_number'";
  
  if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
    header("Location:dashboard.php");
  } else {
    echo "Error updating record: " . $conn->error;
  }
  
  $conn->close();


?>
