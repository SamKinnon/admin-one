<?php
include 'db.php';
$c_number=$_GET['c_number'];
$records ="SELECT contracts.c_number,contractor.c_title,contracts.c_duration,contracts.c_date,contracts.c_attachments   
        FROM contractor  
        JOIN contracts  
        ON contractor.c_number = contracts.c_number Where contracts.c_number='$c_number' order by c_date asc"; // Fetch all the data from the table customers
$result=mysqli_query($conn,$records);
?>