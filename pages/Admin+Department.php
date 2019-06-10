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
   </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav">
    <div class="wrapper">
      <?php include('../dist/includes/header.php');?>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <!--<div class="container">-->
          <!-- Content Header (Page header) -->
		     <div class="panel panel-primary">
          <section class="content-header">
            <h1>
              <a class="btn btn-warning" href="home.php" >Back</a>
              <a class="btn btn-primary" href="#add" data-target="#add" data-toggle="modal" style="color:#fff;" class="small-box-footer" align="left"><i class="glyphicon glyphicon-plus text-blue"> </i>Add New Product</a>
            </h1>
            <!-- <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Product</li>
            </ol>-->
      
	  	<div style="text-align: right">
	<a href="#demo" class="btn btn-link" data-toggle="collapse">Show/Hide Column<span class="caret"></span></a>   </div>
  <div id="demo" class="collapse"align="right">
		  <div id="grpChkBox"> 
<p><input type="checkbox" name="pic" /> Picture
<input type="checkbox" name="serial" /> Serial #
<input type="checkbox" name="barcode" /> Barcode
<input type="checkbox" name="invoice_no" /> Invoice No.
<input type="checkbox" name="prod_name" /> Product Name
<input type="checkbox" name="prod_model" /> Product Model
<input type="checkbox" name="supplier" /> Supplier
<input type="checkbox" name="price" /> Price
<p><input type="checkbox" name="category" /> Category
<input type="checkbox" name="purchase_date" /> Purchase Date
<input type="checkbox" name="assigned_to" /> Assigned to
<input type="checkbox" name="assigned_date" /> Assigned Date
<input type="checkbox" name="location" /> Location

<input type="checkbox" name="comment" /> Comment
<input type="checkbox" name="status" /> Status

<input type="checkbox" name="action" /> Action


  </div>
</div>

          <!-- Main content -->
          <section class="content">
            <div class="row">
	     
            
            <div class="col-xs-12">
              <div class="box box-primary">
    
                <div class="box-header" align="center">
                  <h3 class="box-title">Admin Department Product List</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                      	<th class="pic">Picture</th>
                        <th class="serial">Serial #</th>
						<th class="barcode">Barcode</th>
						<th class="invoice_no">Invoice No.</th>
                        <th class="prod_name">Product Name</th>
                        <th class="prod_model">Product Model</th>
						            <th class="supplier">Supplier</th>
            						<th class="price">Price</th>
            						<th class="category">Category</th>
            						<th class="purchase_date">Purchase Date</th>
										<th class="assigned_to">Assigned to</th>
										<th class="assigned_date">Assigned Date</th>
									<th class="location">Location</th>
									<th class="comment">Comment</th>
										 <th class="status">Status</th>
                        <th class="action">Action</th>
				
                      </tr>
                    </thead>
                    <tbody>
<?php
		$CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		$HR ="HR Department";
		$Admin = "Admin Department";
		
		$i = 1;
		
		$query=mysqli_query($con,"select * from admin_department where branch_name='$Admin' ")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
			
		$id = $row['prod_id'];
?>
                      <tr>
                      	<!--<td><img style="width:80px;height:60px" src="../dist/uploads/<?php echo $row['prod_pic'];?>"></td>-->
						  <td><img style="width:60px;height:40px" src="../dist/uploads/<?php echo $row['prod_pic'];?>"></td> 
                        <td><?php echo $row['serial'];?></td>
						<td><?php echo $row['barcode_tag'];?></td>
						<td><?php echo $row['Invoice_No'];?></td>
                        <td><?php echo $row['prod_name'];?></td>
                        <td><?php echo $row['prod_model'];?></td>
						<td><?php echo $row['supplier_name'];?></td>
                      <!---  <td><?php echo $row['prod_qty'];?></td> -->
            						<td><?php echo number_format($row['prod_price'],2);?></td>
            						<td><?php echo $row['cat_name'];?></td>
									<td><?php echo $row['purchase_date'];?></td>
									<td><?php echo $row['assigned_to'];?></td>
									<td><?php echo $row['assigned_date'];?></td>
									<td><?php echo $row['Location'];?></td>
									<td><?php echo $row['comment'];?></td>
									<td><?php echo $row['status'];?></td>
                        <td>
				<a href="#updateordinance<?php echo $row['prod_id'];?>" data-target="#updateordinance<?php echo $row['prod_id'];?>" data-toggle="modal" style="color:#fff;" class="small-box-footer"><i class="glyphicon glyphicon-edit text-blue">Edit</i>
				<b><a href="Admin+Department.php?delete=<?php echo $id;?>" onclick="return confirm('Are you sure?');"><span class="glyphicon glyphicon-remove" aria-hidden="true">Delete</td>
	  </a>
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
			  <form class="form-horizontal" method="post" action="admin_produpdate.php" enctype='multipart/form-data'>
        <div class="form-group">
          <label class="control-label col-lg-3" for="price">Serial #</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="serial" value="<?php echo $row['serial'];?>" required>  
          </div>
        </div>
			 <div class="form-group">
          <label class="control-label col-lg-3" for="price">Barcode Tag</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="tag" value="<?php echo $row['barcode_tag'];?>" required>  
          </div>
        </div>
                  <div class="form-group">
          <label class="control-label col-lg-3" for="price">Invoice No.</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="invoice" value="<?php echo $row['Invoice_No'];?>" required>  
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
			$HR ="HR Department";
		$Admin = "Admin Department";
		
              $query2=mysqli_query($con,"select * from supplier")or die(mysqli_error());
                while($row2=mysqli_fetch_array($query2)){
                ?>
                  <option name="supplier_name "value="<?php echo $row2['supplier_name'];?>"><?php echo $row2['supplier_name'];?></option>
                <?php }?>
					    </select>
					</div>
				</div> 
				
			<!---	   <div class="form-group">
          <label class="control-label col-lg-3">Quantity</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="qty" name="prod_qty" placeholder="Quantity" value="<?php echo $row['prod_qty'];?>" required>  
          </div> -->
		  
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
		$HR ="HR Department";
		$Admin = "Admin Department";
		
              $queryc=mysqli_query($con,"select * from category order by cat_name")or die(mysqli_error());
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
          <label class="control-label col-lg-3" for="price">Assigned to</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="assigned_to" name="assigned_to" placeholder="Assigned to" value="<?php echo $row['assigned_to'];?>"></textarea>  
          </div>
        </div>

					 <div class="form-group">
					    <label class="control-label col-sm-3">Assigned Date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" name="assigned_date" id="assigned_date" value="<?php echo $row['assigned_date'];?>">			
						
					   </div>
					  </div>
			 <div class="form-group">
          <label class="control-label col-lg-3 for="price">Department</label>
          <div class="col-lg-9">
             <select  name = "branch_name" disabled="disabled" class="form-control pull-right">
			 <option value = "<?php echo $Admin ?>"><?php echo $Admin ?></option>
							<option value = "IT Department">IT Department</option>					 
							<option value = "Finance Department">Finance Department</option>					 
							<option value = "CS Department">CS Department</option>					 
							<option value = "Sportsbook Department">Sportsbook Department</option>					 
							<option value = "Marketing Department">Marketing Department</option>					 
							<option value = "Production Department">Production Department</option>
		</select>
     
	  </div></div>
	  
	   <div class="form-group">
          <label class="control-label col-lg-3 for="price">Location</label>
          <div class="col-lg-9">
             <select  name = "location"  class="form-control pull-right">
			 <option value = "<?php echo $row['Location']?>"><?php echo $row['Location']?></option>
							<option value = "Pantry">Pantry</option>					 
							<option value = "Hallway">Hallway</option>					 
							<option value = "Lobby/Elevator">Lobby/Elevator</option>					 
							<option value = "Bet Trade Room">Bet Trade Room</option>
							<option value = "Meeting Hub">Meeting Hub</option>	
							<option value = "Recreation Area">Recreation Area</option>					 
							<option value = "Directors Room">Directors Room</option>
							<option value = "Comfort Room">Comfort Room</option>					 
							<option value = ">Reception Area">Reception Area</option>					 
							<option value = "WS-Traders">WS-Traders</option>					 
							<option value = "WS-Mapper">WS-Mapper</option>					 
							<option value = "WS-Accounts">WS-Accounts</option>					 
							<option value = "WS-Director">WS-Director</option>
							<option value = "WS Room">WS Room</option>
							<option value = "Board Room">Board Room</option>
							<option value = "Meeting Room">Meeting Room</option>
							<option value = "Marketing Room">Marketing Room</option>
							<option value = "Stock Room">Stock Room</option>
							<option value = "Sportsbook Area">Sportsbook Area</option>
							<option value = "IT Room">IT Room</option>
							<option value = "CS Room">CS Room</option>
							<option value = "Sales Room">Sales Room</option>	
							<option value = "Server Room">Server Room</option>
							<option value = "HRAD & Finance Room">HRAD & Finance Room</option>
							<option value = "Fire Exit">Fire Exit</option>
		</select>
	  	  </div></div>
		  
		  
		    <div class="form-group">
          <label class="control-label col-lg-3" for="price">Comment</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="comment" name="comment" placeholder="Comments" value="<?php echo $row['comment'];?>"></textarea>  
          </div>
        </div>
		
       <div class="form-group">
          <label class="control-label col-lg-3 for="price">Status</label>
          <div class="col-lg-9">
            <select  name = "status"  class="form-control pull-right">
			  <option value = "<?php echo $row['status']?>"><?php echo $row['status']?></option>
			  <option value = "">--Please choose an option--</option>
			  <option value = "N/A">N/A</option>	
							<option value = "Available">Available</option>
							<option value = "Dispose">Dispose</option>					 
								<option value = "Deployed">Deployed</option>					 
									 
	  </select>
	  	  </div></div>
	  	  
	  
	  
	  
       <div class="form-group">
					<label class="control-label col-lg-3" for="price">Picture</label>
					<div class="col-lg-9">
					  <input type="hidden" class="form-control" id="price" name="image1" value="<?php echo $row['prod_pic'];?>"> 
					  <input type="file" class="form-control" id="price" name="image">		  
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
 </div>
 <!--end of modal-->                    
<?php
			$id = $_SESSION['id'];	
			$i++;
			}
			if(isset($_GET['delete'])){
				$delete_id = $_GET['delete'];
				
				mysqli_query($con,"Delete from admin_department WHERE prod_id = '$delete_id'");
					$remarks="has deleted a product in Admin Department at";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks',NOW())")or die(mysqli_error($con));		
				echo "<script>document.location='Admin+Department.php'</script>";  
			
			}
	
		?>						  
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
	
<div id="add" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content" style="height:auto">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Add New Product</h4>
              </div>
              <div class="modal-body">
        <form class="form-horizontal" method="post" action="adminproduct+add.php" enctype='multipart/form-data'>
        <div class="form-group">
          <label class="control-label col-lg-3" for="price">Serial #</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="serial" placeholder="Product Code" required>  
          </div>
        </div>
			<div class="form-group">
          <label class="control-label col-lg-3" for="price">Barcode Tag</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="tag" placeholder="Barcode Tag" required>  
          </div>
        </div>
               <div class="form-group">
          <label class="control-label col-lg-3" for="price">Invoice No.</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="price" name="invoice" placeholder="Invoice No." required>  
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
			$HR ="HR Department";
		$Admin = "Admin Department";
		
              $query2=mysqli_query($con,"select * from supplier")or die(mysqli_error());
                while($row2=mysqli_fetch_array($query2)){
                ?>
                  <option name="supplier_name "value="<?php echo $row2['supplier_name'];?>"><?php echo $row2['supplier_name'];?></option>
                <?php }?>
              </select>
          </div>
        </div> 
		
        <!--- <div class="form-group">
          <label class="control-label col-lg-3">Quantity</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="qty" name="prod_qty" placeholder="Quantity" required>  
          </div>
        </div> -->
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
		$HR ="HR Department";
		$Admin = "Admin Department";
		
              $queryc=mysqli_query($con,"select * from category order by cat_name")or die(mysqli_error());
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
          <label class="control-label col-lg-3" for="price">Assigned to</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="assigned_to" name="assigned_to" placeholder="Assigned to"></textarea>  
          </div>
        </div>
			
		<div class="form-group">
					    <label class="control-label col-sm-3">Assigned Date:</label>
					    <div class="col-sm-9"> 
					      <input type="date" class="form-control" name="assigned_date" >
					    </div>
					  </div>		
			
			
			
			
			
			
        <div class="form-group">
          <label class="control-label col-lg-3 for="price">Department</label>
          <div class="col-lg-9">
              <select  name = "branch_name" disabled="disabled" class="form-control pull-right">
			 <option value = "<?php echo $Admin ?>"><?php echo $Admin ?></option>
							<option value = "IT Department">IT Department</option>					 
							<option value = "Finance Department">Finance Department</option>					 
							<option value = "CS Department">CS Department</option>					 
							<option value = "Sportsbook Department">Sportsbook Department</option>					 
							<option value = "Marketing Department">Marketing Department</option>					 
							<option value = "Production Department">Production Department</option>
		</select>
     
	  </div></div>
	  
	   <div class="form-group">
          <label class="control-label col-lg-3 for="price">Location</label>
          <div class="col-lg-9">
           <select  name = "location"  class="form-control pull-right">
							<option value = "Pantry">Pantry</option>					 
							<option value = "Hallway">Hallway</option>					 
							<option value = "Lobby/Elevator">Lobby/Elevator</option>					 
							<option value = "Bet Trade Room">Bet Trade Room</option>
							<option value = "Meeting Hub">Meeting Hub</option>	
							<option value = "Recreation Area">Recreation Area</option>					 
							<option value = "Directors Room">Directors Room</option>
							<option value = "Comfort Room">Comfort Room</option>					 
							<option value = ">Reception Area">Reception Area</option>					 
							<option value = "WS-Traders">WS-Traders</option>					 
							<option value = "WS-Mapper">WS-Mapper</option>					 
							<option value = "WS-Accounts">WS-Accounts</option>					 
							<option value = "WS-Director">WS-Director</option>
							<option value = "WS Room">WS Room</option>
							<option value = "Board Room">Board Room</option>
							<option value = "Meeting Room">Meeting Room</option>
							<option value = "Marketing Room">Marketing Room</option>
							<option value = "Stock Room">Stock Room</option>
							<option value = "Sportsbook Area">Sportsbook Area</option>
							<option value = "IT Room">IT Room</option>
							<option value = "CS Room">CS Room</option>
							<option value = "Sales Room">Sales Room</option>	
							<option value = "Server Room">Server Room</option>
							<option value = "HRAD & Finance Room">HRAD & Finance Room</option>
							<option value = "Fire Exit">Fire Exit</option>
							
		</select>
	  	  </div></div>
		  
		    <div class="form-group">
          <label class="control-label col-lg-3" for="price">Comment</label>
          <div class="col-lg-9">
            <input type="text" class="form-control" id="comment" name="comment" placeholder="Comments"></textarea>  
          </div>
        </div>
		
        <div class="form-group">
          <label class="control-label col-lg-3 for="price">Status</label>
          <div class="col-lg-9">
            <select  name = "status"  class="form-control pull-right">
			  <option value = "<?php echo $row['status']?>"><?php echo $row['status']?></option>
			  <option value = "">--Please choose an option--</option>
			  <option value = "N/A">N/A</option>	
							<option value = "Available">Available</option>
							<option value = "Dispose">Dispose</option>					 
								<option value = "Deployed">Deployed</option>					 
									 
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
          "autoWidth": true
        });
      });
	$(function () {
    var $chk = $("#grpChkBox input:checkbox"); 
    var $tbl = $("#example1");
    var $tblhead = $("#example1 th");
 
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
