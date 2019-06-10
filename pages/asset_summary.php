<?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 


$sql = "INSERT INTO asset_summary (countrow,"IT DEPARTMENT") SELECT COUNT(prod_id),department FROM it_department  ";
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
?>
