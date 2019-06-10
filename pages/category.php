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
    <title>Category | <?php include('../dist/includes/title.php');?></title>
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
            <!-- <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Category</li>
            </ol>
          </section>-->
			<!-- <ol class="breadcrumb">
			<b> Search: </b><input id='myInput' onkeyup='myFunction()' type='text' placeholder="Search..">
			</ol>
          <!-- Main content -->
          <section class="content">
		  
            <div class="row">
	      <div class="col-md-4">
		   	  
              <div class="box box-primary">
                <div class="box-header">
			
                  <h3 class="box-title">Add New Category</h3>
                </div>
                <div class="box-body">
                  <!-- Date range -->
                  <form method="post" action="cat_add.php" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="date">Category</label>
                    <div class="input-group col-md-12">
                      <input type="text" class="form-control pull-right" id="date" name="category" placeholder="Category" required>
					</div>
					</div>
					
				    <!--<label for="date">Comment</label>
						 <input type="text" class="form-control pull-right" id="date" name="comment" placeholder="Comments" required>-->
					<br><br>
                      <button class="btn btn-primary" id="daterange-btn" name="">
                        Save
                      </button>
					  <button type="reset" class="btn" id="daterange-btn">
                        Clear
                      </button>
				
				
				
                  <!-- /.form group -->
					
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
            </form>
			
            <div class="col-xs-8">
              <div class="box box-primary">
    
                <div class="box-header">
                  <h3 class="box-title">Category List</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example2" class="table table-bordered table-striped">
                    <thead>
                      <tr>
			<th>Unit</th>
			<!--<th>Comment</th>-->
			<th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
		$i=1;
		
		$query=mysqli_query($con,"select * from category order by cat_name")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){

		$id = $row['cat_id'];
		
?>
                       <tr>
                        <td><?php echo $row['cat_name'];?></td>
					
                        <td>
			<a href="#updateordinance<?php echo $row['cat_id'];?>" data-target="#updateordinance<?php echo $row['cat_id'];?>" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-edit text-blue">Edit</i></a>
		<b><a href="category.php?delete=<?php echo $id;?>" onclick="return confirm('Are you sure?');"><span class="glyphicon glyphicon-remove" aria-hidden="true">Delete</td>
	 
						</td>
                      </tr>
<div id="updateordinance<?php echo $row['cat_id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Update Category Details</h4>
              </div>
              <div class="modal-body">
			  <form class="form-horizontal" method="post" action="cat_update.php" enctype='multipart/form-data'>
                
				<div class="form-group">
					<label class="control-label col-lg-3" for="name">Category</label>
					<div class="col-lg-9"><input type="hidden" class="form-control" id="id" name="id" value="<?php echo $row['cat_id'];?>" required>  
					  <input type="text" class="form-control" id="name" name="category" value="<?php echo $row['cat_name'];?>" required> 
				</div><br>
				<!--<div class="form-group">
					  <label class="control-label col-lg-3" for="name">Comment</label>
					<div class="form-group has-feedback">
                        <div class="col-md-9 col-sm-9 col-xs-9">                    
						 <input type="text" class="form-control pull-right" name="comment" value="<?php echo $row['comment'];?>" required>
</div>
</div>-->
    <br>
			 
              <div class="modal-footer">
		<button type="submit" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
			  </form>
            </div>
      
			
        </div><!--end of modal-dialog-->
 </div>
 <!--end of modal-->     


<?php
		$id = $_SESSION['id'];	
			$i++;
			}
			if(isset($_GET['delete'])){
				$delete_id = $_GET['delete'];
				
				mysqli_query($con,"Delete from category WHERE cat_id = '$delete_id'");
			
$remarks="has deleted a category at";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks',NOW())")or die(mysqli_error($con));

			echo "<script>document.location='category.php'</script>";  
			
			}
	
		?>	
		
	

				  
                    </tbody>
                    <tfoot>
                      <tr>
                       
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
          "lengthChange": true,
          "searching": true,
          "ordering": true,
          "info": true,
          "autoWidth": true
        });
      });
    </script>
	
	
</script>
  </body>
</html>
