
<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
if(empty($_SESSION['branch'])):
header('Location:../index.php');
endif;
?>
 
<?php

 $output =  '';
if(isset($_POST["export_excel"]))
{
		$branch=$_SESSION['branch'];
		$query=("select * from stockin natural join product natural join supplier where branch_id='$branch' order by date desc");
		$result=mysqli_query($con, $query);
		while($row=mysqli_fetch_array($query)){
			{
			$output .='
                      <tr>
                   
		<td>'.$row['prod_name'].'</td>
		<td>'.$row['qty'].'</td>
		<td>'.$row['supplier_name'].'</td>
		<td>'.$row['date'].'</t>
                      
                      </tr>
					  ';
			}
			$output.='</table>';
    header("Content-Type:application/xls");
	header("Content-Disposition:attachment, filename=download.xls");
			echo $output;
		}
}

?>