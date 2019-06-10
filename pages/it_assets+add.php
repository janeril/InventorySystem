	<?php
include('../dist/includes/dbcon.php');


	$_SESSION['A']="";
	$_SESSION['B']="";
	$_SESSION['C']="";
	$_SESSION['D']="";
	$_SESSION['E']="";
	$_SESSION['F']="";
	$_SESSION['G']="";
	$_SESSION['H']="";
	$_SESSION['I']="";
	$_SESSION['J']="";
	$_SESSION['K']="";
	
	
if(isset($_POST['barcode'])){
$q=mysql_query("select * From it_department where serial ='".$_POST['barcodes']."'");
$check2 = mysql_num_rows($q);
		if ($check2 == 0) {
		
			echo "<script type=text/javascript>";
			echo "alert ('No Results!!')";
			echo "</script>";
				
		}
		
		while($r=mysql_fetch_array($q)){

				$rec=$r['prod_price'];
				$rec=$r['prod_model'];
				$rec=$r['supplier_name'];
				$rec=$r['cat_name'];
				$rec=$r['serial'];
				$rec=$r['prod_qty'];	
			    $rec=$r['purchase_date'];
				$rec = $r ['status'];
				$rec = $r ['assigned_to'];
				$rec = $r ['assigned_date'];

		if($_POST['barcodes']==$r['serial'] ){	
				$_SESSION['A']=$r['prod_price'];
				$_SESSION['B']=$r['prod_model'];
				$_SESSION['C']=$r['supplier_name'];
				$_SESSION['D']=$r['cat_name'];
				$_SESSION['E']=$r['serial'];
				$_SESSION['F']=$r['prod_qty'];	
			    $_SESSION['G']=$r['purchase_date'];
				  $_SESSION['H']=$r['status'];
				  $_SESSION['I']=$r['assigned_to'];
				   $_SESSION['J']=$r['assigned_date'];
				  
				  
				  
		}
			$str = $str . "<tr><td style='font-size:14px;color:white;background-color:#02c7fe'><b>".$r['serial']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['prod_price']."</td></tr>";	
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['prod_model']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['supplier_name']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['cat_name']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['serial']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['prod_qty']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['purchase_date']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['purchase_date']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['status']."</td></tr>";
	
			$str = $str ."<tr><td style='font-size:13px'>".$r['assigned_to']."</td></tr>";
			
			$str = $str ."<tr><td style='font-size:13px'>".$r['assigned_date']."</td></tr>";
	
	
	}
	
	echo $str."<br>"."</table>";

}
	
?>					  