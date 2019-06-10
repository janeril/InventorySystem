<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
if(empty($_SESSION['branch'])):
header('Location:../index.php');
endif;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home | <?php include('../dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
	
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../plugins/select2/select2.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
    <style>
      .col-lg-3{
        margin:50px 0px;
      }

th {
    background-color: #4CAF50;
    color: white;
}

body  {
 
    background-color: FFFFFF;
}

    </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
     <body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav" onload="myFunction()">
    <div class="wrapper">
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper" style="background-color:white">
	    <section class="content" >
           
	     
			
      <!--      <div class="col-xs-8">
              <div class="box box-primary">
    
                <div class="box-header">
                  <h3 class="box-title">Recent Activities</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                      <!--  <th>Logs</th>-->
                      </tr>
                    </thead>
                    <tbody>
<?php
		$query=mysqli_query($con,"select * from history_log	  natural join user order by date desc LIMIT 5")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
				
?>


                      <tr>
 <!--<td><?php echo $row['name'];?></td>
 <td><?php echo $row['action'];?></td>
<td><?php echo $row['date'];?></td>
                           
                      </tr>
				   	  
                 
<?php }?>					  
                    </tbody>
                    <tfoot>
                      <tr>
                     
                 
                      </tr>					  
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
 
            </div><!-- /.col -->
       <!-- <div class="container">
          <!-- Content Header (Page header) -->
		
<?php  


	require('db_config.php');


	/* Getting demo_viewer table data */
	$sql = "SELECT SUM(prod_price) as count FROM it_department 
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$it = mysqli_query($mysqli,$sql);
	$it = mysqli_fetch_all($it,MYSQLI_ASSOC);
	$it = json_encode(array_column($it, 'count'),JSON_NUMERIC_CHECK);


	/* Getting demo_click table data */
	$sql = "SELECT SUM(prod_price) as count FROM finance_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$finance = mysqli_query($mysqli,$sql);
	$finance = mysqli_fetch_all($finance,MYSQLI_ASSOC);
	$finance = json_encode(array_column($finance, 'count'),JSON_NUMERIC_CHECK);


	
	$sql = "SELECT SUM(prod_price) as count FROM hr_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$hr = mysqli_query($mysqli,$sql);
	$hr = mysqli_fetch_all($hr,MYSQLI_ASSOC);
	$hr = json_encode(array_column($hr, 'count'),JSON_NUMERIC_CHECK);


	$sql = "SELECT SUM(prod_price) as count FROM admin_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$admin = mysqli_query($mysqli,$sql);
	$admin = mysqli_fetch_all($admin,MYSQLI_ASSOC);
	$admin = json_encode(array_column($admin, 'count'),JSON_NUMERIC_CHECK);
	
	
	$sql = "SELECT SUM(prod_price) as count FROM cs_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$cs= mysqli_query($mysqli,$sql);
	$cs = mysqli_fetch_all($cs,MYSQLI_ASSOC);
	$cs = json_encode(array_column($cs, 'count'),JSON_NUMERIC_CHECK);
	
	
	$sql = "SELECT SUM(prod_price) as count FROM sportsbook_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$sb = mysqli_query($mysqli,$sql);
	$sb = mysqli_fetch_all($sb,MYSQLI_ASSOC);
	$sb = json_encode(array_column($sb, 'count'),JSON_NUMERIC_CHECK);
	
	
	$sql = "SELECT SUM(prod_price) as count FROM production_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$prod = mysqli_query($mysqli,$sql);
	$prod = mysqli_fetch_all($prod,MYSQLI_ASSOC);
	$prod = json_encode(array_column($prod, 'count'),JSON_NUMERIC_CHECK);
	
	$sql = "SELECT SUM(prod_price) as count FROM marketing_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$ma = mysqli_query($mysqli,$sql);
	$ma = mysqli_fetch_all($ma,MYSQLI_ASSOC);
	$ma = json_encode(array_column($ma, 'count'),JSON_NUMERIC_CHECK);
	
	


	$sql = "SELECT SUM(prod_price) as count FROM sales_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$sales = mysqli_query($mysqli,$sql);
	$sales = mysqli_fetch_all($sales,MYSQLI_ASSOC);
	$sales = json_encode(array_column($sales, 'count'),JSON_NUMERIC_CHECK);
	
	$sql = "SELECT SUM(prod_price) as count FROM ws_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$ws = mysqli_query($mysqli,$sql);
	$ws = mysqli_fetch_all($ws,MYSQLI_ASSOC);
	$ws= json_encode(array_column($ws, 'count'),JSON_NUMERIC_CHECK);
	
	
	$sql = "SELECT SUM(prod_price) as count FROM management_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$management= mysqli_query($mysqli,$sql);
	$management = mysqli_fetch_all($management,MYSQLI_ASSOC);
	$management = json_encode(array_column($management, 'count'),JSON_NUMERIC_CHECK);
	
	
	
	$sql = "SELECT SUM(prod_price) as count FROM integration_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$integ = mysqli_query($mysqli,$sql);
	$integ = mysqli_fetch_all($integ,MYSQLI_ASSOC);
	$integ= json_encode(array_column($integ, 'count'),JSON_NUMERIC_CHECK);
	
		
	$sql = "SELECT SUM(prod_price) as count FROM qa_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$QA = mysqli_query($mysqli,$sql);
	$QA = mysqli_fetch_all($QA,MYSQLI_ASSOC);
	$QA= json_encode(array_column($QA, 'count'),JSON_NUMERIC_CHECK);
		
	$sql = "SELECT SUM(prod_price) as count FROM newfire_department
			GROUP BY YEAR(purchase_date) ORDER BY purchase_date";
	$newfire = mysqli_query($mysqli,$sql);
	$newfire = mysqli_fetch_all($newfire,MYSQLI_ASSOC);
	$newfire= json_encode(array_column($newfire, 'count'),JSON_NUMERIC_CHECK);
	
	
	
	
?>


<!DOCTYPE html>
<html>
<head>

	<title>HighChart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js"></script>

 
	<script src="https://code.highcharts.com/highcharts.js"></script>

	
</head>
<body>

<!--all this script is for highchart api and using json query-->
<script type="text/javascript">


$(function () { 


    var data_it = <?php echo $it; ?>;
    var data_finance = <?php echo $finance; ?>;
    var data_hr = <?php echo $hr; ?>;
    var data_admin = <?php echo $admin; ?>;
	 var data_cs = <?php echo $cs; ?>;
    var data_sb = <?php echo $sb; ?>;
	 var data_product = <?php echo $prod; ?>;
    var data_marketing = <?php echo $ma; ?>;
	 var data_sales = <?php echo $sales; ?>;
    var data_ws = <?php echo $ws; ?>;
	 var data_integ = <?php echo $integ; ?>;
	  var data_management = <?php echo $management; ?>;
		  var data_qa = <?php echo $QA; ?>;
		  	  var data_newfire = <?php echo $newfire; ?>;
	
	
  Highcharts.chart('container', {
		
		credits: {
			enabled:false
		},
				
    plotOptions: {
        series: {
            events: {
                legendItemClick: function(event) {
                    if (!this.visible)
                        return true;
                    
                    var seriesIndex = this.index;
                    var series = this.chart.series;
                    
                    for (var i = 0; i < series.length; i++)
                    {
                        if (series[i].index != seriesIndex)
                        {
                            
                            series[i].visible ? series[i].hide() : series[i].show();
                        } 
                    }
                    
                    return false;
                }
            }
        }
    },
		
		
        chart: {
            type: 'column'
        },
        title: {
            text: 'Yearly Expenses'
        },
        xAxis: {
            categories: ['0000','2014','2015', '2016','2017','2018','2019']
			
        },
        yAxis: {
            title: {
                text: 'Rate'
				
            }
        },
		
		  
		
		
		
	// This is for left side compile all series	
 //   legend: {
   //     layout: 'vertical',
     //   align: 'right',
      //  verticalAlign: 'top',
       // x: 0,
       // y: 20,
       // floating: true,
       // borderWidth: 1,
       // backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
        //shadow: true
    //},

		
		
        series: [{
            name: 'IT',
            data: data_it
        }, {
            name: 'Finance',
            data: data_finance
			},{
	
			
			name:'HR',
			data : data_hr
		},{
			name:'Admin',
			data:data_admin
			
		},{
			name:'CS',
			data: data_cs
		},{
			name : 'Sportsbook',
			data: data_sb
		},{
			name : 'Product Dev',
			data : data_product
		},{
			name: 'Marketing',
			data:data_marketing
		},{
			
			name : 'Sales',
			data: data_sales
		},{
			name: 'WS',
			data: data_ws
			
		},{
			name : 'Integration',
			data: data_integ
		
		},{
			name : 'Management',
			data: data_management
		 
			},{
			name : 'QA',
			data: data_qa
		 },{
			name : 'New Fire',
			data: data_newfire
		 
        }]
    });
});


</script>



  <table  class="columns" align=center>
      <tr>
        <td><div id="container"  style="border: 0px solid #ccc"></div></td>  <!--highchart table > -->
      <td><div id="chart1_div" style="border: 0px solid #ccc"></div></td> <!-- grand total price of all dept-->
		
		
		 
      </tr>
    </table>





<!-- highchart default single chart->
<!--<div class="container"> 
	<br/>
	<h2 class="text-center"></h2>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>
                <div class="panel-body">
                    <div id="container"></div>
					
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html> -->


		
		
		
		
		
		
		
		
		
		
<!--Googlechart API -->

<?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql =  "select branch_name, sum(prod_price) total from
(select branch_name, prod_price from admin_department
union all
select branch_name, prod_price from it_department
union all
select branch_name, prod_price from finance_department
union all
select branch_name, prod_price from cs_department
union all
select branch_name, prod_price from hr_department
union all
select branch_name, prod_price from integration_department
union all
select branch_name, prod_price from management_department
union all
select branch_name, prod_price from  marketing_department
union all
select branch_name, prod_price from production_department
union all
select branch_name, prod_price from sales_department
union all
select branch_name, prod_price from sportsbook_department
union all
select branch_name, prod_price from ws_department
union all
select branch_name, prod_price from qa_department
union all
select branch_name, prod_price from newfire_department

) t group by branch_name";


 

 
 
 
 
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Startup', 'type' => 'string'),
    array('label' => 'Total Price  ', 'type' => 'number'),
	  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['branch_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['total']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable1 = json_encode($table);
 
?>
 
 <?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql = "select count(*)status, branch_name from admin_department WHERE status='deployed' 
union all
select count(*)status, branch_name from it_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from finance_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from cs_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from hr_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from integration_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from management_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from marketing_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from production_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from sales_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from sportsbook_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from ws_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from qa_department   WHERE status='deployed' 
union all
select count(*)status, branch_name from newfire_department   WHERE status='deployed' 
 
 order by branch_name";
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Startup', 'type' => 'string'),
    array('label' => 'Users', 'type' => 'number')
  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['branch_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['status']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable2 = json_encode($table);
 
?>
 
 
 <?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql = "select count(*)status, branch_name from admin_department WHERE status='dispose' 
union all
select count(*)status, branch_name from it_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from finance_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from cs_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from hr_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from integration_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from management_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from marketing_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from production_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from sales_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from sportsbook_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from ws_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from qa_department   WHERE status='dispose' 
union all
select count(*)status, branch_name from newfire_department   WHERE status='dispose' 
 
 order by branch_name";
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Startup', 'type' => 'string'),
    array('label' => 'Users', 'type' => 'number')
  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['branch_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['status']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable3 = json_encode($table);
 
?>
 
  <?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql = "select count(*)status, branch_name from admin_department WHERE status='available' 
union all
select count(*)status, branch_name from it_department   WHERE status='available' 
union all
select count(*)status, branch_name from finance_department   WHERE status='available' 
union all
select count(*)status, branch_name from cs_department   WHERE status='available' 
union all
select count(*)status, branch_name from hr_department   WHERE status='available' 
union all
select count(*)status, branch_name from integration_department   WHERE status='availabe' 
union all
select count(*)status, branch_name from management_department   WHERE status='available' 
union all
select count(*)status, branch_name from marketing_department   WHERE status='available' 
union all
select count(*)status, branch_name from production_department   WHERE status='available' 
union all
select count(*)status, branch_name from sales_department   WHERE status='available' 
union all
select count(*)status, branch_name from sportsbook_department   WHERE status='available' 
union all
select count(*)status, branch_name from ws_department   WHERE status='available' 
union all
select count(*)status, branch_name from qa_department   WHERE status='available' 
union all
select count(*)status, branch_name from newfire_department   WHERE status='available' 
 
 order by branch_name";
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Startup', 'type' => 'string'),
    array('label' => 'Users', 'type' => 'number')
  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['branch_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['status']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable4 = json_encode($table);
 
?>
 
 

 

 

 

 

 





		
<?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql = "select count(*)prod_price, branch_name from admin_department 
UNION All  SELECT count(*)prod_price,branch_name from it_department
UNION ALL SELECT count(*)prod_price,branch_name from finance_department
UNION ALL  SELECT count(*)prod_price,branch_name from cs_department
UNION All SELECT count(*)prod_price,branch_name from hr_department
UNION All SELECT count(*)prod_price,branch_name from integration_department
UNION All SELECT count(*)prod_price,branch_name from management_department
UNION ALL SELECT count(*)prod_price,branch_name from marketing_department
UNION All SELECT count(*)prod_price,branch_name from production_department
UNION All SELECT count(*)prod_price,branch_name from sales_department
UNION All SELECT count(*)prod_price,branch_name from sportsbook_department
UNION All SELECT count(*)prod_price,branch_name from ws_department
UNION All SELECT count(*)prod_price,branch_name from qa_department
UNION All SELECT count(*)prod_price,branch_name from newfire_department
 order by branch_name";


 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Startup', 'type' => 'string'),
    array('label' => 'Users', 'type' => 'number')
  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['branch_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['prod_price']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable = json_encode($table);
   
   
   
   
   
   
   
   
   
   
   
 
?>


<!-- Pie for Category each department (Devices)

<?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql = "select count(*)status, branch_name, cat_name from admin_department WHERE status='deployed' 
union all
select count(*)status, branch_name, cat_name from it_department   WHERE status='deployed' 
union all
select count(*)status, branch_name, cat_name from finance_department   WHERE status='deployed' 
union all
select count(*)status, branch_name, cat_name from cs_department   WHERE status='deployed' 
union all
select count(*)status, branch_name, cat_name from hr_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name from integration_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name from management_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name from marketing_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name from production_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name from sales_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name from sportsbook_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name  from ws_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name  from qa_department   WHERE status='deployed' 
union all
select count(*)status, branch_name,cat_name  from newfire_department   WHERE status='deployed' 

 
 order by branch_name";
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Year', 'type' => 'string'),
    array('label' => 'Count', 'type' => 'number')
  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['cat_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['status']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable5 = json_encode($table);
 
?>
 <!-- This code is for dispose devices by category
 <?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql = "select count(*)status, branch_name, cat_name from admin_department WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from it_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from finance_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from cs_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from hr_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from integration_department   WHERE status='dispose' 
union all
select count(*)status, branch_name , cat_name from management_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from marketing_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from production_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from sales_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from sportsbook_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from ws_department   WHERE status='dispose' 
union all
select count(*)status, branch_name, cat_name from qa_department   WHERE status='dispose'
union all
select count(*)status, branch_name, cat_name from newfire_department   WHERE status='dispose'

 
 order by branch_name";
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Startup', 'type' => 'string'),
    array('label' => 'Users', 'type' => 'number')
  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['cat_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['status']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable6 = json_encode($table);
 
?>

<!-- This is for AVAILABLE DEVICES by category (Pie) -->
  <?php //open connection to mysql db 
$connection = mysqli_connect("localhost","root","","admin") or die("Error " . mysqli_error($connection)); 
//fetch table rows from mysql db 
$sql = "
select count(*)status, branch_name,cat_name from it_department   WHERE status='available' group by cat_name";
 $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection)); 
//create an array 
$rows = array(); 
//flag is not needed
 $flag = true; 
$table = array(); 
$table['cols'] = array( // Labels for your chart, these represent the column titles // Note that one column is in "string" format and another one is in "number" format as pie chart only required "numbers" for calculating percentage and string will be used for column title 
array('label' => 'Startup', 'type' => 'string'),
    array('label' => 'Users', 'type' => 'number')
  
);
		
		

 
    $rows = array();
    while($r =mysqli_fetch_assoc($result))
    {
    $temp = array();
    // the following line will be used to slice the Pie chart
    $temp[] = array('v' => (string) $r['cat_name']); 
  
    // Values of each slice
    $temp[] = array('v' => (int) $r['status']);
    $rows[] = array('c' => $temp);
    }
     
  $table['rows'] = $rows;
   $jsonTable7 = json_encode($table);
 
?>

 
 




 
 
 
<html>
  <head>
    <!--Load the Ajax API--> <!-- This is for Googlechart-->
	
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript">
	
		
	
  
    // Load the Visualization API and the piechart package.
    google.load('visualization', '1', {'packages':['corechart']});
  
    // Set a callback to run when the Google Visualization API is loaded.
    google.setOnLoadCallback(drawChart);
  
     function drawChart() { //Total Assests
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable?>);
      var options = {
           title: 'TOTAL ASSETS PER DEPARTMENT ',
          is3D: 'true',
          width: 600,
          height: 400
		  
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
    </script>
	 <script>
	 google.setOnLoadCallback(draw1Chart);
  
    function draw1Chart() { //Grand total prices of each department
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable1?>);
      var options = { 
           title: 'GRAND TOTAL COSTS EXPENSES OF PRODUCTS IN PESO',
          is3D: 'true',
          width: 600,
		
          height: 400
		    
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.BarChart(document.getElementById('chart1_div'));
      chart.draw(data, options);
    }
    </script>
	 <script>
	 google.setOnLoadCallback(draw2Chart);
  
    function draw2Chart() { // Status for deployed device
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable2?>);
      var options = { 
           title: 'TOTAL DEPLOYED DEVICES BY DEPARTMENT',
          is3D: 'true',
		   pieSliceText: 'value',
          width: 600,
          height: 400
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart2_div'));
      chart.draw(data, options);
    }
    </script>
	 <script>
	 google.setOnLoadCallback(draw3Chart);
  
    function draw3Chart() { // Status for disposed device
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable3?>);
      var options = { 
           title: 'TOTAL DISPOSED DEVICES BY DEPARTMENT',
          is3D: 'true',
		  pieSliceText: 'value',
          width: 600,
          height: 400
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart3_div'));
      chart.draw(data, options);
    }
    </script>
	 <script>
	 google.setOnLoadCallback(draw4Chart);
  
    function draw4Chart() { // Status for disposed device
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable4?>);
      var options = { 
           title: 'TOTAL AVAILABLE DEVICES PER DEPARTMENT',


          is3D: 'true',
		  pieSliceText: 'value',
          width: 600,
          height: 400
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart4_div'));
      chart.draw(data, options);
    }
    </script>
	
	 <script>
	 google.setOnLoadCallback(draw5Chart);
  
    function draw5Chart() { // Status for disposed device
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable5?>);
      var options = { 
           title: 'TOTAL DEPLOYED DEVICES BY CATEGORY',
          is3D: 'true',
		  pieSliceText: 'value',
          width: 600,
          height: 400,
		  
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart5_div'));
      chart.draw(data, options);
    }
    </script>
	 <script>
	 google.setOnLoadCallback(draw6Chart);
  
    function draw6Chart() { // Status for disposed device
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable6?>);
      var options = { 
           title: 'TOTAL DISPOSED DEVICES BY CATEGORY',
          is3D: 'true',
		  pieSliceText: 'value',
          width: 600,
          height: 400
        };
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart6_div'));
      chart.draw(data, options);
    }
    </script>
	 <script>
	 
	 
	 google.setOnLoadCallback(draw7Chart);
  
    function draw7Chart() {
  
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(<?=$jsonTable7?>);
      var options = {
           title: 'TOTAL AVAILABLE DEVICES BY CATEGORY  ',
          is3D: 'true',
		  pieSliceText: 'value',
          width: 600,
          height: 400
		  
        };
		
      // Instantiate and draw our chart, passing in some options.
      // Do not forget to check your div ID
      var chart = new google.visualization.PieChart(document.getElementById('chart7_div'));
      chart.draw(data, options);
    }
 </script>
	
	
	
	
  </head>
  <body>
    <!--this is the div that will hold the pie chart-->

  <table  class="columns" align="center"  >
      <tr>
          <td><div id="chart7_div" style="border: 0px solid #ccc" ></div></td>
		  <td><div id="chart_div" style="border: 0px solid #ccc"></div></td> 
		  
		  
		  
      </tr>
    </table>
	
  
   <table  class="columns" align="center"  >
      <tr>
        <td><div id="chart2_div" style="border: 0px solid #ccc"></div></td>  
		  <td><div id="chart5_div" style="border: 0px solid #ccc"></div></td> 
		  
		  
		  
      </tr>
    </table>
	
		  
   <table  class="columns" align="center"  >
   
    <tr>
	<td><div id="chart3_div" style="border: 0px solid #ccc" ></div></td>
		<td><div id="chart6_div" style="border: 0px solid #ccc" ></div></td>
		
  
      </tr>
    </table>
 
	
	
		  

  </body>
</html>



</body>
</html>
		
	
	
	<table  class="columns" align="center" >
      <tr>
        
		<td><div id="chart7_div" style="border: 0px solid #ccc" ></div></td>
	    </tr>
		  </table>
  </body>
</html>



</body>
</html>
		
		





        <!-- Main content -->
        <!--    <section class="content">
            <div class="row">
	      <div class="col-md-8">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Transactions</h3>
                </div><!-- /.box-header -->
                <!--  <div class="box-body">
                  <div class="row">
                      <div class="col-lg-4">
                        <!-- small box -->
                   <!--       <div class="small-box bg-green">
                          <div class="inner">
                            <h3>Department</h3>
                            <p>View/Add/Edit</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-shopping-cart"></i>
                          </div>
                          <a href="IT+Department.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                      </div><!-- ./col -->

					 <!-- 	 <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                    <!--      <div class="small-box bg-red">
                          <div class="inner">
                            <h3>Assets</h3>
                            <p>Generate/Print/Download</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-object-align-vertical"></i>
                          </div>
                          <a href="it_assets.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                     
                      </div><!-- ./col -->
                    <!--     <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                    <!--      <div class="small-box bg-orange">
                          <div class="inner">
                            <h3>Reports</h3>
                            <p>View/Print</p>
                          </div>
                          <div class="icon" style="margin-top:10px">
                            <i class="glyphicon glyphicon-list-alt"></i>
                          </div>
                          <a href="it_report.php" class="small-box-footer">
                            Go <i class="fa fa-arrow-circle-right"></i>
                          </a>
                        </div>
                        <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                <!--        </div>
                      </div><!-- ./col -->
                 <!--       <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                   <!--       <div class="small-box bg-red">
                          
                          <div class="icon" style="margin-top:10px">
                           
                          </div>
                         
                        </div>
                      </div><!-- ./col -->

                <!--       <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                  <!--        <div class="small-box bg-orange">
                         
                          <div class="icon" style="margin-top:10px">
                            
                          </div>
                          
                        </div>
                      </div><!-- ./col -->
              <!--      </div><!--row-->
                  
      
           <!--       </div><!-- /.box-body -->
          <!--      </div><!-- /.box -->
           <!--   </div><!-- /.col (right) -->
            
        <div class="col-md-4">

              
              <!-- About Me Box -->
             <!-- <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">About Us</h3>
                </div><!-- /.box-header -->
   <!--<?php
    $branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error());
      $row=mysqli_fetch_array($query);
      
?>
                <div class="box-body">
                  <strong><i class="glyphicon glyphicon-map-marker margin-r-5"></i> Company Address</strong>
                  <p class="text-muted">
                    <?php echo $row['branch_address'];?>
                  </p>

                  <hr>

                  <strong><i class="glyphicon glyphicon-phone-alt margin-r-5"></i> Contact Number/s</strong>
                  <p class="text-muted"><?php echo $row['branch_contact'];?></p>

                  <hr>-->

                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
			
			
          </div><!-- /.row -->
	  
            
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <?php include('../dist/includes/footer.php');?>
    </div><!-- ./wrapper -->
	<script>
    $(function() {
      $(".btn_delete").click(function(){
      var element = $(this);
      var id = element.attr("id");
      var dataString = 'id=' + id;
      if(confirm("Sure you want to delete this item?"))
      {
	$.ajax({
	type: "GET",
	url: "temp_trans_del.php",
	data: dataString,
	success: function(){
		
	      }
	  });
	  
	  $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
	  .animate({ opacity: "hide" }, "slow");
      }
      return false;
      });

      });
	  var chart = new Highcharts.Chart({
      chart: {
         renderTo: 'container'
      },
      series: [{
         data: [<?php echo join($data, ',') ?>],
         pointStart: 0,
         pointInterval
      }]
});
    </script>
	
	<script type="text/javascript" src="autosum.js"></script>
  
    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="../dist/js/jquery.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../plugins/select2/select2.full.min.js"></script>
    <!-- SlimScroll -->
 <!--   <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script> -->
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
    
    <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>
     <script>
      $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
              ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              },
              startDate: moment().subtract(29, 'days'),
              endDate: moment()
            },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });
      });
    </script>
  </body>
</html>
