<?php 
session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
include('../dist/includes/dbcon.php');

	$id = $_SESSION['id'];	   
	$cat = $_POST['category'];




		$query2=mysqli_query($con,"select * from category INNER JOIN user ON category.user_id =user.user_id where cat_name='$cat'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query2);

		if ($count>0)
		{
			echo "<script type='text/javascript'>alert('Category already exist!');</script>";
			echo "<script>document.location='category.php'</script>";  
		}
		else
		{			
		
			mysqli_query($con,"INSERT INTO category(cat_name) VALUES('$cat')")or die(mysqli_error($con));
				echo "<script type='text/javascript'>alert('Successfully added new category!');</script>";
					  echo "<script>document.location='category.php'</script>";  
					  $remarks="has added new category at";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks',NOW())")or die(mysqli_error($con));
		}
?>