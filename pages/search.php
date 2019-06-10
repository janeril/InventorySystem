<?php

echo "<table id='example2' align='center' class='table table-bordered table-striped'><tr><th align='center'>Serial</th><th align='center'>Product Name</th><th align='center'>Product Model</th><th align='center'>Supplier</th><th align='center'>Category</th><th align='center'>Price</th><th align='center'>Quantity</th><th align='center'>Purchase Date</th></tr>";

    $key=$_GET['key'];
    $array = array();
    $con=mysql_connect("localhost","root","");
    $db=mysql_select_db("data",$con);
    $query=mysql_query("select * from it_department where serial LIKE '%{$key}%'");
    while($r=mysql_fetch_assoc($query))
    {
      $array[] = $r['serial'];
	  
	  
    }
echo "<tr><td>".$r['serial']."</td><td>".$r['prod_name']."</td><td>".$r['prod_model']."</td><td>".$r['supplier_name']."</td><td>".$r['cat_name']."</td><td>".$r['prod_price']."</td><td>".$r['prod_qty']."</td><td>".$r['purchase_date']."</td></tr>";
	
    echo json_encode($array);
?>
