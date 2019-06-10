<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Assets | <?php include('../dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src = "../dist/js/jquery.table2excel.min.js"> </script>

    <style type="text/css">
      h5,h6{
        text-align:center;
      }
		

      @media print {
          .btn-print {
            display:none !important;
		  }
		  .main-footer	{
			display:none !important;
		  }
		  .box.box-primary {
			  border-top:none !important;
		  }
		  
          
      }
	  
	  
    </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav">
    <div class="wrapper">
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
          <!-- Content Header (Page header) -->
          <section class="content-header">
            <h1>
              <a class="btn btn-warning" href="home.php">Back</a>
			 </h1>
		
            <!-- <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Product</li>
            </ol>-->
          </section>

    <br> <div class="panel panel-primary"align="right">
	 <a href="#demo" class="btn btn-link" data-toggle="collapse" >Show/Hide Column<span class="caret"></span></a>
  <div id="demo" class="collapse">
		  <div id="grpChkBox"> 
<input type="checkbox" name="serial" /> Serial #
<input type="checkbox" name="barcode" /> Barcode
<input type="checkbox" name="invoice_no" /> Invoice No.
<input type="checkbox" name="prod_name" /> Product Name
<input type="checkbox" name="prod_model" /> Product Model
<p><input type="checkbox" name="supplier" /> Supplier
<input type="checkbox" name="price" /> Price
<input type="checkbox" name="category" /> Category
<input type="checkbox" name="purchase_date" /> Purchase Date
<input type="checkbox" name="location" /> Location
<input type="checkbox" name="status" /> Status
<input type="checkbox" name="assigned_to" /> Assigned to
<input type="checkbox" name="assigned_date" /> Assigned Date
<input type="checkbox" name="action" /> Action


  </div>
</div>

          <!-- Main content -->
		  
		  <script>
$(function() {
    $( "#skills" ).autocomplete({
        source: 'search.php'
    });
});
</script>

<script type="text/javascript">
	$(document).ready(function(e){
		
		$("#mybutton").click(function(e){	
			$(".mytable").table2excel({
				name: "New File",
				filename: "newfile",
				fileext: ".xls"
				
			});
		});
	});		
</script>
		
   <section class="content">
            <div class="row">
	     
            
            <div class="col-xs-12">
              <div class="box box-primary">
    
                <div class="box-header">
                 <!--  <h3 class="box-title">IT Department Product List</h3>
                </div><!-- /.box-header -->
				<div id="div2">
                <div class="box-body">
                
                    <thead>
                      <tr>
                     
                      
                      </tr>
                    </thead>
                    <tbody>
            
            

   <form method="POST" action="production_assets+.php">
	
			<h5 class= "hidden-print">Enter Product Code Here:
          	<input type="text" id="barcodes" name="barcodes" onKeyUp="bleble();" class= "hidden-print" autocomplete="off">
			<button type="submit" id="barcode "name="barcode" class= "hidden-print">Enter</button>
			
		
					
	<?php
include('../dist/includes/dbcon.php');

		$CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		$Production = "Production Department";
		$Marketing = "Marketing Department";
		$Sportsbook = "Sportsbook Department";
		$HR = "HR Department";
		$Admin = "Admin Department";
		

	$branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_name='$Production'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
    
        
		
?>			    
	  <br><br>   
                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				 <h5><b>Product Inventory date of:  <?php echo date("M d, Y");?></b></h5>
				 
<br><br>
	
  <table id="example2" class="table table-bordered table-hover" class="mytable" cellspacing="0" width="100%">
              
                    <thead>
                      <tr>

                        <th class="serial">Serial #</th>
						  <th class="barcode">Barcode Tag</th>
						  <th class="invoice_no">Invoice No.</th>
                          <th class="prod_name">Product Name</th>
                       <th class="prod_model">Product Model</th>
						              <th class="supplier">Supplier</th>
                       <!-- <th>Qty</th> -->
            						  <th class="price">Price</th>
            					  <th class="category">Category</th>
            						  <th class="purchase_date">Purchase Date</th>
									  <th class="location">Location</th>
									  <th class="status">Status</th>
									  <th class="assigned_to">Assigned To</th>
									  <th class="assigned_date">Assigned Date</th>
									<th class="action">Action</th>
								
                      </tr>
                    </thead>
                    <tbody>
					
	<?php
		$CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		$today = date("Y-m-d");
		
		$i=1;
		
		$query=mysqli_query($con,"select * from production_records_assets where date = '$today'")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		
			$id = $row['Product_id'];
?>
                      <tr>
           
                      <td><?php echo $row['Serial'];?></td>
					  <td><?php echo $row['Barcode'];?></td>
					  <td><?php echo $row['Invoice_No'];?></td>
                   <td><?php echo $row['Product_name'];?></td>
                        <td><?php echo $row['Product_model'];?></td>
						            <td><?php echo $row['Supplier'];?></td>
                      <!--  <td><?php echo $row['Quantity'];?></td> -->
            						<td><?php echo number_format($row['Price'],2);?></td>
            						<td><?php echo $row['Category'];?></td>
									<td><?php echo $row['Purchase_date'];?></td>
									<td><?php echo $row['Location'];?></td>
									<td><?php echo $row['status'];?></td>
									<td><?php echo $row['assigned_to'];?></td>
										<td><?php echo $row['assigned_date'];?></td>
										
									
							<td class= "hidden-print"><b><a href="production_assets.php?delete=<?php echo $id;?>" onclick="return confirm('Are you sure?');"><span class="glyphicon glyphicon-remove" aria-hidden="true">Delete</td>
	  
		
		<?php
		
			$i++;
			}
			if(isset($_GET['delete'])){
				$delete_id = $_GET['delete'];
				
				mysqli_query($con,"Delete from production_records_assets WHERE Product_id = '$delete_id'");
				echo "<script>document.location='production_assets.php'</script>";  
			
			}
		
		?>
		
		
		
		
		</table>
		<br>
		<div id="div2" class="panel-body" align="left">
		<a class = "btn btn-success btn-print" href = "" onclick="printContent('div2')"><i class ="glyphicon glyphicon-print"  ></i> Print Report</a>
     <b><a href="export_production.php" class= "hidden-print"><button type="button" class="btn btn-success btn-print">Export to Excel<span class="glyphicon glyphicon-success" aria-hidden="true">
	  
	

		
        </div><!--end of modal-dialog-->
 </div>
 <!--end of modal-->                    
					  
                    </tbody>
                    <tfoot>
                      <tr>
                      	<!-- <th>Picture</th>
                        <th>Serial #</th>
                        <th>Product Name</th>
                        <th>Product Model</th>
						<th>Supplier</th>
                        <th>Qty</th>
						<th>Price</th>
						<th>Category</th>
						<th>Puchase Date</th>
                        <th>Action</th>-->
                      </tr>					  
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
 
            </div><!-- /.col -->
			
			
          </div><!-- /.row -->
	  
            
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <?php include('../dist/includes/footer.php');?>
    </div><!-- ./wrapper -->
	

      
        </div><!--end of modal-dialog-->
 </div>
 <!--end of modal--> 
    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
    
    <script>
  function printContent(el){
	  var restorepage = document.body.innerHTML;
	  var printcontent = document.getElementById(el).innerHTML;
	  document.body.innerHTML = printcontent;
	  window.print();
	  document.body.innerHTML = restorepage;
  }
  
  </script>
<script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": false,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
	  
	  $(function () {
    var $chk = $("#grpChkBox input:checkbox"); 
    var $tbl = $("#example2");
    var $tblhead = $("#example2 th");
 
    $chk.prop('checked', true); 
 
    $chk.click(function () {
        var colToHide = $tblhead.filter("." + $(this).attr("name"));
        var index = $(colToHide).index();
        $tbl.find('tr :nth-child(' + (index + 1) + ')').toggle();
        });
      });
    </script>
  </body>
</html>