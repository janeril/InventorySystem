<?php 
session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;


include('../dist/includes/dbcon.php');
$id = $_SESSION['id'];
	$name = $_POST['prod_name'];
	$price = $_POST['prod_price'];
	$prod_model = $_POST['prod_model'];
	$supplier_name = $_POST['supplier_name'];
	$cat_name = $_POST['cat_name'];
	$serial = $_POST['serial'];
//	$qty = $_POST['prod_qty'];
	$purchase_date = $_POST['purchase_date'];
	$invoice = $_POST['invoice'];
	$location = $_POST['location'];
	$comment = $_POST['comment'];
	$tag = $_POST['tag'];
	$IT = "IT Department";
	$status = $_POST['status'];
	$assigned_to = $_POST['assigned_to'];
	$assigned_date = $_POST['assigned_date'];
	
	
		$query2=mysqli_query($con,"select * from it_department INNER JOIN user ON it_department.user_id =user.user_id where serial='$serial'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query2);

		if ($count>0)
		{
			echo "<script type='text/javascript'>alert('Product already exist!');</script>";
			echo "<script>document.location='IT+Department.php'</script>";  
		}
		else
		{	

			$pic = $_FILES["image"]["name"];
			if ($pic=="")
			{
				$pic="default.gif";
			}
			else
			{
				$pic = $_FILES["image"]["name"];
				$type = $_FILES["image"]["type"];
				$size = $_FILES["image"]["size"];
				$temp = $_FILES["image"]["tmp_name"];
				$error = $_FILES["image"]["error"];
			
				if ($error > 0){
					die("Error uploading file! Code $error.");
					}
				else{
					if($size > 100000000000) //conditions for the file
						{
						die("Format is not allowed or file size is too big!");
						}
				else
				      {
					move_uploaded_file($temp, "../dist/uploads/".$pic);
				      }
					}
			}	

			mysqli_query($con,"INSERT INTO it_department(prod_name,prod_price,prod_model,prod_pic,cat_name,supplier_name,branch_name,serial,prod_qty,purchase_date,Invoice_No,Location,comment,barcode_tag,status,assigned_to,assigned_date)
			VALUES('$name','$price','$prod_model','$pic','$cat_name','$supplier_name','$IT','$serial','$qty','$purchase_date','$invoice','$location', '$comment', '$tag', '$status','$assigned_to','$assigned_date')")or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added new product!');</script>";
					  echo "<script>document.location='IT+Department.php'</script>"; 
					  	$remarks="added new product in IT Department at";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks',NOW())")or die(mysqli_error($con));
				
					  
		}
?>