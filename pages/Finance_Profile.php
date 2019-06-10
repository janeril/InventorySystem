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
    <title>Product | <?php include('../dist/includes/title.php');?></title>
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
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
          <section class="content-header">
            <h1>
              <a class="btn btn-lg btn-warning" href="home.php">Back</a>
              <a class="btn btn-lg btn-primary" href="#add" data-target="#add" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-plus text-blue"></i></a>
            </h1>
            <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Product</li>
            </ol>
          </section>

          <!-- Main content -->
          <section class="content">
            <div class="row">
	     
            
            <div class="col-xs-12">
              <div class="box box-primary">
    
                <div class="box-header">
                  <h3 class="box-title">IT Department Product List</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                      	<th>Picture</th>
                        <th>Serial #</th>
                        <th>Product Name</th>
                        <th>Product Model</th>
						            <th>Supplier</th>
                        <th>Qty</th>
            						<th>Price</th>
            						<th>Category</th>
            						<th>Puchase Date</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
		$CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		
		$query=mysqli_query($con,"select * from it_department where branch_name='$IT' ")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		
?>
                      <tr>
                      	<td><img style="width:80px;height:60px" src="../dist/uploads/<?php echo $row['prod_pic'];?>"></td>
                        <td><?php echo $row['serial'];?></td>
                        <td><?php echo $row['prod_name'];?></td>
                        <td><?php echo $row['prod_model'];?></td>
						            <td><?php echo $row['supplier_name'];?></td>
                        <td><?php echo $row['prod_qty'];?></td>
            						<td><?php echo number_format($row['prod_price'],2);?></td>
            						<td><?php echo $row['cat_name'];?></td>
									<td><?php echo $row['purchase_date'];?></td>
                        <td>
				<a href="#updateordinance<?php echo $row['prod_id'];?>" data-target="#updateordinance<?php echo $row['prod_id'];?>" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-edit text-blue">Edit</i></a>
			
						</td>
                      </tr>
<div id="updateordinance<?php echo $row['prod_id'];?>" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	
	<div class="modal-dialog">
	  <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Update Product Details</h4>
              </div>
              <div class="modal-body">
			  <form class="form-horizontal" method="post" action="it_produpdate.php" enctype='multipart/form-data'>
        <div class="form-group">
          <label class="control-label col-lg-3" for="price">Serial #</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="serial" value="<?php echo $row['serial'];?>" required>  
          </div>
        </div>
                
				<div class="form-group">
					<label class="control-label col-lg-3" for="name">Product Name</label>
					<div class="col-lg-9"><input type="hidden" class="form-control" id="id" name="id" value="<?php echo $row['prod_id'];?>" required>  
					  <input type="text" class="form-control" id="name" name="prod_name" value="<?php echo $row['prod_name'];?>" required>  
					</div>
				</div> 
        <div class="form-group">
          <label class="control-label col-lg-3" for="name">Product Model</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="name" name="prod_model" value="<?php echo $row['prod_model'];?>" required>  
          </div>
        </div> 
				<div class="form-group">
					<label class="control-label col-lg-3" for="file">Supplier</label>
					<div class="col-lg-9">
					     <select class="form-control select2" style="width: 100%;" name="supplier_name" value="<?php echo $row['supplier_name'];?>" required>
						 <option value="<?php echo $row['supplier_name'];?>"><?php echo $row['supplier_name'];?></option>
                <?php
				
        $CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		
              $query2=mysqli_query($con,"select * from supplier where branch_name='$IT'")or die(mysqli_error());
                while($row2=mysqli_fetch_array($query2)){
                ?>
                  <option name="supplier_name "value="<?php echo $row2['supplier_name'];?>"><?php echo $row2['supplier_name'];?></option>
                <?php }?>
					    </select>
					</div>
				</div> 
				
				   <div class="form-group">
          <label class="control-label col-lg-3">Quantity</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="qty" name="prod_qty" placeholder="Quantity" value="<?php echo $row['prod_qty'];?>" required>  
          </div>
		  
				<div class="form-group">
					<label class="control-label col-lg-3" for="price">Price</label>
					<div class="col-lg-9">
					  <input type="text" class="form-control" id="price" name="prod_price" value="<?php echo $row['prod_price'];?>" required>  
					</div>
				</div>
				
				<div class="form-group">
							<label class="control-label col-lg-3" >Category</label>
							<div class="col-lg-9">
							  <select class="form-control select2" style="width: 100%;" name="cat_name" value="<?php echo $row['cat_name'];?>" required>
                              <option value="<?php echo $row['cat_name'];?>"><?php echo $row['cat_name'];?></option>
                <?php
             $CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		
              $queryc=mysqli_query($con,"select * from category where branch_name='$IT' order by cat_name")or die(mysqli_error());
                while($rowc=mysqli_fetch_array($queryc)){
                ?>
                  <option name="cat_name" value="<?php echo $rowc['cat_name'];?>"><?php echo $rowc['cat_name'];?></option>
                <?php }?>
              </select>
							</div><!-- /.input group -->
			
			<div class="form-group">
					    <label class="control-label col-sm-3">Purchase Date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" name="purchase_date" id="purchase_date" value="<?php echo $row['purchase_date'];?>">			
						
					   </div>
					  </div>
					  
			 <div class="form-group">
          <label class="control-label col-lg-3 for="price">Department</label>
          <div class="col-lg-9">
             <select  name = "branch_name" disabled="disabled" class="form-control pull-right">
			 <option value = "<?php echo $IT ?>"><?php echo $IT ?></option>
							<option value = "IT Department">IT Department</option>					 
							<option value = "Finance Department">Finance Department</option>					 
							<option value = "CS Department">CS Department</option>					 
							<option value = "Sportsbook Department">Sportsbook Department</option>					 
							<option value = "Marketing Department">Marketing Department</option>					 
							<option value = "Production Department">Production Department</option>
		</select>
     
	  </div></div>
        <div class="form-group">
					<label class="control-label col-lg-3" for="price">Picture</label>
					<div class="col-lg-9">
					  <input type="hidden" class="form-control" id="price" name="image1" > 
					  <input type="file" class="form-control" id="price" name="image" value="<?php echo $row['prod_pic'];?>" >		  
			</div>
	   
              </div>
			  <br><br>
              <div class="modal-footer">
    <button type="submit" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
        </form>
            </div>
      
        </div><!--end of modal-dialog-->
 </div>
 <!--end of modal-->                    
<?php }?>					  
                    </tbody>
                    <tfoot>
                      <tr>
                      	<th>Picture</th>
                        <th>Serial #</th>
                        <th>Product Name</th>
                        <th>Product Model</th>
						<th>Supplier</th>
                        <th>Qty</th>
						<th>Price</th>
						<th>Category</th>
						<th>Puchase Date</th>
                        <th>Action</th>
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
	
<div id="add" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Add New Product</h4>
              </div>
              <div class="modal-body">
        <form class="form-horizontal" method="post" action="itproduct+add.php" enctype='multipart/form-data'>
        <div class="form-group">
          <label class="control-label col-lg-3" for="price">Serial #</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="serial" placeholder="Product Code" required>  
          </div>
        </div>
                
        <div class="form-group">
          <label class="control-label col-lg-3" for="name">Product Name</label>
          <div class="col-lg-9"><input type="hidden" class="form-control" id="id" name="id" required>  
            <input type="text" class="form-control" id="name" name="prod_name" placeholder="Product Name" required>  
          </div>
        </div> 
        <div class="form-group">
          <label class="control-label col-lg-3" for="price">Product Model</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="prod_model" placeholder="Product Model"></textarea>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-lg-3" for="file">Supplier</label>
          <div class="col-lg-9">
              <select class="form-control select2" style="width: 100%;" name="supplier_name" required>
                <?php
				
        $CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		
              $query2=mysqli_query($con,"select * from supplier where branch_name='$IT'")or die(mysqli_error());
                while($row2=mysqli_fetch_array($query2)){
                ?>
                  <option name="supplier_name "value="<?php echo $row2['supplier_name'];?>"><?php echo $row2['supplier_name'];?></option>
                <?php }?>
              </select>
          </div>
        </div> 
		
        <div class="form-group">
          <label class="control-label col-lg-3">Quantity</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="qty" name="prod_qty" placeholder="Quantity" required>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-lg-3" for="price">Price</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="prod_price" placeholder="Product Price" required>  
          </div>
        </div>
        
        <div class="form-group">
              <label class="control-label col-lg-3" >Category</label>
              <div class="col-lg-9">
                <select class="form-control select2" style="width: 100%;" name="cat_name" required>
              
                <?php
             $CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		
              $queryc=mysqli_query($con,"select * from category where branch_name='$IT' order by cat_name")or die(mysqli_error());
                while($rowc=mysqli_fetch_array($queryc)){
                ?>
                  <option name="cat_name" "value="<?php echo $rowc['cat_name'];?>"><?php echo $rowc['cat_name'];?></option>
                <?php }?>
              </select>
              </div><!-- /.input group -->
            </div>  <!-- /.form group -->
		<div class="form-group">
					    <label class="control-label col-sm-3">Purchase Date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" name="purchase_date" >
					    </div>
					  </div>	
			
			
        <div class="form-group">
          <label class="control-label col-lg-3 for="price">Department</label>
          <div class="col-lg-9">
              <select  name = "branch_name" disabled="disabled" class="form-control pull-right">
			 <option value = "<?php echo $IT ?>"><?php echo $IT ?></option>
							<option value = "IT Department">IT Department</option>					 
							<option value = "Finance Department">Finance Department</option>					 
							<option value = "CS Department">CS Department</option>					 
							<option value = "Sportsbook Department">Sportsbook Department</option>					 
							<option value = "Marketing Department">Marketing Department</option>					 
							<option value = "Production Department">Production Department</option>
		</select>
     
	  </div></div>
        <div class="form-group">
          <label class="control-label col-lg-3 for="price">Picture</label>
          <div class="col-lg-9">
            <input type="file" class="form-control" id="price" name="image">  
			</div>
	   
              </div>
              <div class="modal-footer">
    <button type="submit" class="btn btn-primary">Save changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
        </form>
            </div>
      
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
