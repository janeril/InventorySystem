<?php 
session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
include('../dist/includes/dbcon.php');

	$id = $_SESSION['id'];



	$name = $_POST['name'];
	$address = $_POST['address'];
	$contact = $_POST['contact'];


			
		$query2=mysqli_query($con,"select * from supplier INNER JOIN user ON supplier.user_id =user.user_id  where supplier_name='$name'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query2);
	
		
			mysqli_query($con,"INSERT INTO supplier(supplier_name,supplier_address,supplier_contact) 
				VALUES('$name','$address','$contact')")or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added new supplier!');</script>";
					  echo "<script>document.location='supplier.php'</script>";  
					  $remarks="has added new supplier at";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks',NOW())")or die(mysqli_error($con));
		
?>