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
    <title>Product Inventory Report | <?php include('../dist/includes/title.php');?></title>
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
      <?php include('../dist/includes/header.php');
      include('../dist/includes/dbcon.php');
      ?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
         

          <!-- Main content -->
          <section class="content">
            <div class="row">
	    <div class="col-xs-12">
              <div class="box box-primary">
					
              
                <div class="box-body">
				
				<?php
include('../dist/includes/dbcon.php');

		$CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		$Production = "Production Department";
		$Marketing = "Marketing Department";
		$Sportsbook = "Sportsbook Department";
		$HRAD = "HRAD Department";
		

$branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_name='$HRAD'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
        
?>      


                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <!-- <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>-->
                   
				  
				  
 			 	<div class="panel-heading">
        <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
        <?php echo $row['branch_name'];?> Status Report</div>
  	  			<div class="panel-body">
              <!-- main content -->
              <b>Filter:</b>
                <select class="btn btn-default" id="report-choice">
                  <option value="all">All</option>
                  <option value="Category">Category</option>
				  <option value="condemed">Date</option>
                </select>
				
				 	  	   <!--<a  class href ="print_IT+Reports.php"><i class ="glyphicon glyphicon-print"></i>View Print</a>
               -->
				  <a class = "btn btn-success btn-print" href = "print_hrad+report.php"><i class ="glyphicon glyphicon-print"></i>View Print</a>
				
				<!--<a class = "btn btn-primary btn-print" href = "home.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>   
	     -->
            <br><br>
     
					<div class="panel-body">
                 <table id="myTable-report" class="table table-bordered table-hover" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                      	
                        <th>Serial #</th>
                        <th>Product Name</th>
                        <th>Product Model</th>
						            <th>Supplier</th>
                        <th>Qty</th>
            						<th>Price</th>
            						<th>Category</th>
            						<th>Puchase Date</th>
                      <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
		$CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		$Production = "Production Department";
		$Marketing = "Marketing Department";
		$Sportsbook = "Sportsbook Department";
		$HRAD = "HRAD Department";
		
		$query=mysqli_query($con,"select * from hrad_department where branch_name='$HRAD' ")or die(mysqli_error());
		$grand=0;
		while($row=mysqli_fetch_array($query)){
			$total=$row['prod_price']*$row['prod_qty'];
			$grand+=$total;
?>
                      <tr>
                      	
                        <td><?php echo $row['serial'];?></td>
                        <td><?php echo $row['prod_name'];?></td>
                        <td><?php echo $row['prod_model'];?></td>
						            <td><?php echo $row['supplier_name'];?></td>
                        <td><?php echo $row['prod_qty'];?></td>
            						<td><?php echo number_format($row['prod_price'],2);?></td>
            						<td><?php echo $row['cat_name'];?></td>
									<td><?php echo $row['purchase_date'];?></td>
                        <td><?php echo number_format($total,2);?></td>
                        
				
						</td>
                      </tr>

<?php }?>					  
                    </tbody>
                    <tfoot>
                      <tr>
                        <th colspan="5">Total</th>
                        <th></th>
                        <th></th>
                        <th></th>
                       
                      
						
						<th colspan="2">P<?php echo number_format($grand,2);?></th>
						
                        
                      </tr>	
                      
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                      </tr> 
                        </table>
						
                        <b>Prepared by:</b>
                        
                      </tr> 
<?php
    $id=$_SESSION['id'];
    $query=mysqli_query($con,"select * from user where user_id='$id'")or die(mysqli_error($con));
    $row=mysqli_fetch_array($query);
 
?>                      
						<br>
                        <b><?php echo $row['name'];?></b>
                        <th></th>
                        <th></th>
                        <th></th>
                      </tr>  				  
                    </tfoot>
                </div><!-- /.box-body -->
 
            </div><!-- /.col -->
			
			
          </div><!-- /.row -->
	  
            
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <?php include('../dist/includes/footer.php');?>
    </div><!-- ./wrapper -->
	
<div id="add" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content" style="height:auto">
              
      
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
    

    </script>
  </body>
</html>
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable-report').DataTable();
	});
</script>