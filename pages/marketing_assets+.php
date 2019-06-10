<?php 
session_start();
include('../dist/includes/dbcon.php');

	$barcodes = $_POST['barcodes'];
	$today = date("Y-m-d");
	
		$query2=mysqli_query($con,"select * from marketing_department where serial = '$barcodes'")or die(mysqli_error($con));
		
		$count=mysqli_num_rows($query2);
		
		if ($count==0)
		{
			echo "<script type='text/javascript'>alert('Barcodes Not exist!');</script>";
			echo "<script>document.location='marketing_assets.php'</script>";  
		}

		else{
				$query2=mysqli_query($con,"select * from marketing_department where serial = '$barcodes'")or die(mysqli_error($con));
			$r=mysqli_fetch_array($query2);
			$barcodes = $r['serial'];
            $prod_model = $r['prod_model'];
            $prod_name = $r['prod_name'];
			$supplier_name = $r['supplier_name'];
            $cat_name = $r['cat_name'];
            $prod_price= $r['prod_price'];
			$prod_qty = $r['prod_qty'];
            $purchase_date= $r['purchase_date'];
			$department= $r['branch_name'];
			$location= $r['Location'];
			$invoice= $r['Invoice_No'];
			$Barcode= $r['barcode_tag'];
			$status= $r['status'];
			$assigned_to= $r['assigned_to'];
			$assigned_date= $r['assigned_date'];
			
			mysqli_query($con,"INSERT INTO marketing_records_assets(Serial,Product_name,Price,Product_model,Category,Supplier,Quantity,Purchase_date,Date,Department,Invoice_No,Location,Barcode,status,assigned_to,assigned_date)


				VALUES('$barcodes','$prod_name','$prod_price','$prod_model','$cat_name','$supplier_name','$prod_qty','$purchase_date','$today','$department','$invoice','$location','$Barcode', '$status', '$assigned_to', '$assigned_date')")or die(mysqli_error($con));

				echo "<script>document.location='marketing_assets.php'</script>";  
		}
	
?>
