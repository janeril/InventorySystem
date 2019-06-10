<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');
	$id = $_POST['id'];
		$id1 = $_SESSION['id'];
			
	$category =$_POST['category'];


	
	
	mysqli_query($con,"update category set cat_name='$category' where cat_id='$id'")or die(mysqli_error());
	
	
	$remarks="has edited a category details  at";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id1','$remarks',NOW())")or die(mysqli_error($con));
	
	
	echo "<script type='text/javascript'>alert('Successfully updated category!');</script>";
	echo "<script>document.location='category.php'</script>";  

	
?>