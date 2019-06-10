<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
if(empty($_SESSION['branch'])):
header('Location:../index.php');
endif;
?><!DOCTYPE html>
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

$branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_name='$branch'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
        
?>      
                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>
                  
				  
				  
 			 	<div class="panel-heading">
        <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
        All Item Status Report</div>
  	  			<div class="panel-body">
              <!-- main content -->
              <b>Filter:</b>
                <select class="btn btn-default" id="report-choice" name="report">
                  <option value="all">All</option>
                  <option value="IT Departmen">IT Department</option>
                  <option value="Finance Department">Finance Department</option>
				    <option value="CS Department">CS Department</option>
					<option value="Marketing Department">Marketing Department</option>
                  <option value="HRAD Department">HRAD Department</option>
				    <option value="Production Department">Production Department</option>
					 <option value="Sportsbook Department">Sportsbook Department</option>
                </select>
				
				 <button type="submit" name= "view" class="btn btn-success">View</button>
				 
				 
				 <button id="print-btn" type="button" class="btn btn-success">
                PRINT
                <span class="glyphicon glyphicon-print" aria-hidden="true"></span>
                </button>
				
				  
				
					<a class = "btn btn-primary btn-print" href = "home.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>   
					<br><br>	
                  <table class="table table-bordered table-striped">
                    <thead>
									
					
					
					
					
					
					
					
					
					
					
 <tr>
                        <th><?php echo $row['name'];?></th>
                        <th></th>
                        <th></th>
                        <th></th>
                      </tr>  				  
                    </tfoot>
                  </table>
                </div>					
<!-- /.box-body -->

	      </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->

          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
      <?php include('../dist/includes/footer.php');?>
    </div><!-- ./wrapper -->

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
  </body>
</html>
