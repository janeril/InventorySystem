<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../dist/includes/dbcon.php');

	$Integration = "Integration Department";
	$id = $_POST['id'];
	$id1 = $_SESSION['id'];
	$name = $_POST['prod_name'];
	$price = $_POST['prod_price'];
	$prod_model = $_POST['prod_model'];
	$supplier_name = $_POST['supplier_name'];
	$cat_name = $_POST['cat_name'];
	$serial = $_POST['serial'];
	$purchase_date = $_POST['purchase_date'];
	//$qty = $_POST['prod_qty'];
	$invoice = $_POST['invoice'];
	$location = $_POST['location'];
	$comment = $_POST['comment'];
	$tag = $_POST['tag'];
	$status = $_POST['status'];	
	$assigned_to = $_POST['assigned_to'];
	$assigned_date = $_POST['assigned_date'];
	
	$pic = $_FILES["image"]["name"];
			if ($pic=="")
			{	
				if ($_POST['image1']<>""){
					$pic=$_POST['image1'];
				}
				else
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
			
	mysqli_query($con,"UPDATE integration_department SET prod_name='$name',prod_price='$price',branch_name='$Integration',
	supplier_name='$supplier_name',cat_name='$cat_name',prod_pic='$pic',serial='$serial',prod_model='$prod_model',  purchase_date='$purchase_date', Invoice_No='$invoice',Location='$location', barcode_tag='$tag', comment ='$comment', status='$status', assigned_to='$assigned_to', assigned_date='$assigned_date' where prod_id='$id'")or die(mysqli_error($con));
	
	$remarks="has updated product in Integration Department at";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id1','$remarks',NOW())")or die(mysqli_error($con));
	
	echo "<script type='text/javascript'>alert('Successfully updated product details!');</script>";
	echo "<script>document.location='Integration+Department.php'</script>";  

	
?>
