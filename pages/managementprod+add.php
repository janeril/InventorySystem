<?php 
session_start();
include('../dist/includes/dbcon.php');

	$name = $_POST['prod_name'];
	$price = $_POST['prod_price'];
	$prod_model = $_POST['prod_model'];
	$supplier_name = $_POST['supplier_name'];
	$cat_name = $_POST['cat_name'];
	$serial = $_POST['serial'];
	$qty = $_POST['prod_qty'];
	$purchase_date = $_POST['purchase_date'];
	$Management = "Management Department";
	$invoice = $_POST['invoice'];	
	$location = $_POST['location'];
	$comment = $_POST['comment'];
	$tag = $_POST['tag'];
		
	$query2=mysqli_query($con,"select * from management_department where serial='$serial'")or die(mysqli_error($con));
	$count=mysqli_num_rows($query2);

		if ($count>0)
		{
			echo "<script type='text/javascript'>alert('Product already exist!');</script>";
			echo "<script>document.location='Management.php'</script>";  
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

			mysqli_query($con,"INSERT INTO management_department(prod_name,prod_price,prod_model,prod_pic,cat_name,supplier_name,branch_name,serial,prod_qty,purchase_date,Invoice_No,Location,comment,barcode_tag)
			VALUES('$name','$price','$prod_model','$pic','$cat_name','$supplier_name','$Sales','$serial','$qty','$purchase_date','$invoice','$location','$comment','$tag')")or die(mysqli_error($con));

			echo "<script type='text/javascript'>alert('Successfully added new product!');</script>";
					  echo "<script>document.location='Management.php'</script>";  
		}
?>