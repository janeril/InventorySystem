  
<?php session_start();?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Supplier | <?php include('../dist/includes/title.php');?></title>
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
         <!--<div class="container">-->
          <!-- Content Header (Page header) -->
          <section class="content-header">
           
            <h1>
              <a class="btn btn-warning" href="home.php">Back</a>
           </h1>
           <!--  <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Supplier</li>
            </ol>
          </section>
          <!-- Main content -->
          <section class="content">
            <div class="row">
	      <div class="col-md-4">
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">Add New Supplier</h3>
                </div>
                <div class="box-body">
                  <!-- Date range -->
                  <form method="post" action="supplier_add.php" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="date">Supplier</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="name" placeholder="Supplier Name" required>
					  
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  
				   <div class="form-group">
		      <label for="date">Supplier Address</label>
               	<th><textarea class="form-control pull-right" id="date" name="address" placeholder="Supplier Complete Address" required></textarea><th>
		    <br><br><br><br><br>
			  <label for="date">Supplier Contact #</label>
              <input type="text" class="form-control pull-right" id="date" name="contact" placeholder="Contact # of Supplier" required>
            </div>
			<div>
			<br><br>
			 <!--<label for="date">Comment</label>
						 <input type="text" class="form-control pull-right" id="date" name="comment" placeholder="Comments" required>
					<br><br>-->	<br>
                      <button class="btn btn-primary" id="daterange-btn" name="">
                        Save
                      </button>
					  <button type="reset" class="btn" id="daterange-btn">
                        Clear
                      </button>
				
				
				
                  </div><!-- /.form group -->
					
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
              </form>
            <div class="col-xs-8">
              <div class="box box-primary">
    
                <div class="box-header">
                  <h3 class="box-title">Supplier List</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
						<th>Supplier Name</th>
                        <th>Address</th>
                        <th>Contact #</th>
						<!--<th>Comment</th>-->
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
<?php

		
		$query=mysqli_query($con,"select * from supplier")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
			
		$id = $row['supplier_id'];
		
?>

 <tr>
                        <td><?php echo $row['supplier_name'];?></td>
                        <td><?php echo $row['supplier_address'];?></td>
                        <td><?php echo $row['supplier_contact'];?></td>
                    
						
                        <td>
				
				<a href="#updateordinance<?php echo $row['supplier_id'];?>" data-target="#updateordinance<?php echo $row['supplier_id'];?>" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-edit text-blue">Edit</i></a>
			<b><a href="supplier.php?delete=<?php echo $id;?>" onclick="return confirm('Are you sure?');"><span class="glyphicon glyphicon-remove" aria-hidden="true">Delete</td>

						</td>
                      </tr>
   	<div id="updateordinance<?php echo $row['supplier_id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Update Supplier Details</h4>
              </div>
              <div class="modal-body">
			  <form class="form-horizontal" method="post" action="supplier_update.php" enctype='multipart/form-data'>
                
				<div class="form-group">
					<label for="name">Supplier Name</label>
					<div class="input-group col-md-12"><input type="hidden" class="form-control" id="id" name="id" value="<?php echo $row['supplier_id'];?>" required>  
					  <input type="text" class="form-control" id="name" name="name" value="<?php echo $row['supplier_name'];?>" required>  
					</div>
				</div> 
        <div class="form-group">
                    <label for="date">Supplier Address</label>
                    <div class="input-group col-md-12">
                      <textarea class="form-control pull-right" id="date" name="address" placeholder="Supplier Complete Address" required><?php echo $row['supplier_address'];?></textarea>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
               <div class="form-group">
                    <label for="date">Supplier Contact #</label>
                    <div class="input-group col-md-12">
					  
               <input type="text" class="form-control pull-right" id="date" name="contact" placeholder="Contact # of Supplier" value="<?php echo $row['supplier_contact'];?>" required>
              </div></div>
			<!--  <label for="date">Department</label>
					<div class="form-group has-feedback">
                        <div class="col-md-9 col-sm-9 col-xs-9">
                         <select  name = "branch_name" class="form-control pull-right">
						<option value = "</option>
						<option value = "All Department">All Department</option>
						<option value = "IT Department">IT Department</option>					 
							<option value = "Finance Department">Finance Department</option>					 
							<option value = "CS Department">CS Department</option>					 
							<option value = "Sportsbook Department">Sportsbook Department</option>					 
							<option value = "Marketing Department">Marketing Department</option>					 
							<option value = "Production Department">Production Department</option>
							<option value = "HR Department">HR Department</option>
							<option value = "Admin Department">Admin Department</option>
							<option value = "Sales Department">Sales Department</option>
</div>
</div>
  <select class="form-control select2" style="width:100%" name="branch" required>  -->   
              <div>
			  </div></div>
			  <br>
              <div class="modal-footer">
		<button type="submit" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
			  </form>
			  
            </div>
<?php
		$id = $_SESSION['id'];	
			$i++;
			}
			if(isset($_GET['delete'])){
				$delete_id = $_GET['delete'];
				$remarks="has deleted a supplier at";  
				mysqli_query($con,"Delete from supplier WHERE supplier_id = '$delete_id'");
			
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks',NOW())")or die(mysqli_error($con));			



			echo "<script>document.location='supplier.php'</script>";  
			
			}
	
		?>	
					
                    </div>
                  </div><!-- /.form group -->
				</form>	
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
            


                               				  
                    </tbody>
                    <tfoot>
                      <tr>
						<!--<th>Supplier Name</th>
                        <th>Address</th>
                        <th>Contact #</th>
						<th>Department</th>
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
