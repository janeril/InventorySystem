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
	  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="../plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="../plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="../plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="../plugins/select2/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <script type="text/javascript" src="../dist/js/jquery.min.js"></script>
<script type="text/javascript" src="../dist/js/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="../dist/css/bootstrap.css" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="../plugins/daterangepicker/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="../plugins/daterangepicker/daterangepicker.css" />
	
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
   <?php
	  include('../dist/includes/header.php');
      include('../dist/includes/dbcon.php');
      ?>
	  
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-<?php echo $_SESSION['skin'];?> layout-top-nav">
    <div class="wrapper">
	
   
      <!-- Full Width Column -->
      <div class="content-wrapper">
     <section class="content-header">
            <h1>
              <a class="btn btn-warning" href="home.php">Back Home</a>
           </h1>
		   
		   <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-box"></i> Reports</a></li>
              <li class="active">Quality Assurance Department</li>
            </ol>
          </section>
		  
	  <br> <div class="panel panel-primary">
	 <a href="#demo" class="btn btn-link" data-toggle="collapse">Show/Hide Column<span class="caret"></span></a>
  <div id="demo" class="collapse">
		  <div id="grpChkBox"> 
<p>
<input type="checkbox" name="serial" /> Serial #
<input type="checkbox" name="barcode" /> Barcode
<input type="checkbox" name="invoice_no" /> Invoice No.
<input type="checkbox" name="prod_name" /> Product Name
<input type="checkbox" name="prod_model" /> Product Model
<p><input type="checkbox" name="supplier" /> Supplier
<input type="checkbox" name="price" /> Price
<input type="checkbox" name="category" /> Category
<input type="checkbox" name="purchase_date" /> Purchase Date
<input type="checkbox" name="assigned_to" /> Assigned to
<input type="checkbox" name="assigned_date" /> Assigned Date
<input type="checkbox" name="location" /> Location
<input type="checkbox" name="status" /> Status
 <input type="checkbox" name="comment" /> Comment
<input type="checkbox" name="department"/> Department


  </div>
</div>
          <!-- Main content -->
          <section class="content">
            <div class="row">
	    <div class="col-xs-12">
              <div class="box box-primary">
					
              <div class="box-body">
        
          <!-- /.form group -->

                
              <!-- main content -->
              
				  <form method="post" action="">
          <div class="form-group col-md-5 hidden-print">
            <b>Report Date range:</b>

            <div class="input-group hidden-print">
              <div class="input-group-addon">
              <i class="fa fa-calendar"></i>
              </div>
            <input type="text" name="date" class="form-control pull-right active" id="reservation">
          </div>
                <!-- /.input group -->
          </div>
              <!-- /.form group --><br>
          <button type="submit" class="btn btn-primary hidden-print" name="display">Display</button>
		  <button type="submit" class="btn btn-primary hidden-print" name="view">View All</button>
		</div>
		
		  <div class="form-group">
          <b class="col-md-1" > Filter by Supplier:</b>
          <select class="btn btn-default" name="suppliers">	
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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";
              $query2=mysqli_query($con,"select * from supplier")or die(mysqli_error());
                while($row2=mysqli_fetch_array($query2)){
                ?>
                  <option name="supplier_name "value="<?php echo $row2['supplier_name'];?>"><?php echo $row2['supplier_name'];?></option>
		<?php }?>
              </select>
			  <button type="submit" class="btn btn-primary hidden-print" name="viewsup">View</button>
          </div>
        <div> 	
		<div> 
		
          <b class="col-md-1" > Filter by Category:</b>
          <select class="btn btn-default" name="categories">	
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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";
              
              $queryc=mysqli_query($con,"select * from category")or die(mysqli_error());
                while($rowc=mysqli_fetch_array($queryc)){
                ?>
                  <option name="cat_name" value="<?php echo $rowc['cat_name'];?>"><?php echo $rowc['cat_name'];?></option>
                <?php }?>
              </select>
         
			  <button type="submit" class="btn btn-primary hidden-print" name="viewcat">View</button>
          </div>
        <div> 	
		<div> 
		
				   <!--<a  class href ="print_IT+Reports.php"><i class ="glyphicon glyphicon-print"></i>View Print</a>
               -->
				   
				<!--<a class = "btn btn-primary btn-print" href = "home.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>   
	     -->

          <br><br></form>
<?php
if (isset($_POST['viewsup']))
  {
 
	  
	  
?>	    
					<div id="div3" class="panel-body">
				
					<div class="box-body">
				
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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";

	$branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_name='$QA'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
    
        
?>			    

                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <!-- <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>-->
	  

                 <table id="reporttbl2" class="table table-bordered table-hover" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                      	
                       <th class="serial">Serial #</th>
						<th class="barcode">Barcode</th>
						<th class="invoice_no">Invoice No.</th>
                        <th class="prod_name">Name</th>
                        <th class="prod_model">Model</th>
						            <th class="supplier">Supplier</th>
                    <!--    <th>Qty</th> -->
            						<th class="price">Price</th>
            						<th class="category">Category</th>
            						<th class="purchase_date">Purchase Date</th>
										<th class="assigned_to">Assigned To</th>
											<th class="assigned_date">Assigned Date</th>
									<th class="location">Location</th>
										<th class="status">Status</th>
											<th class="comment">Comments</th>
									<th class="department">Department</th>
								<!--	<th>Total</th>-->
                      </tr>
                    </thead>
                    <tbody>



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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";
		
		$query=mysqli_query($con,"select * from qa_department where supplier_name='".$_POST['suppliers']."'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query);
		
		$check2 = mysqli_num_rows($query);
		if ($check2 == 0) {
		
			echo "<script type=text/javascript>";
			echo "alert ('NO RESULT!')";
			echo "</script>";
			
		}
		else{
		
		$grand=0;
		while($row=mysqli_fetch_array($query)){
			$total=$row['prod_price'];
			$grand+=$total;
			
		
?>
						
          <tr>
                      	
                        <td><?php echo $row['serial'];?></td>
						<td><?php echo $row['barcode_tag'];?></td>
						<td><?php echo $row['Invoice_No'];?></td>
                        <td><?php echo $row['prod_name'];?></td>
                        <td><?php echo $row['prod_model'];?></td>
						            <td><?php echo $row['supplier_name'];?></td>
                  <!--      <td><?php echo $row['prod_qty'];?></td> -->
            						<td><?php echo number_format($row['prod_price'],2);?></td>
            						<td><?php echo $row['cat_name'];?></td>
									<td><?php echo $row['purchase_date'];?></td>
									<td><?php echo $row['assigned_to'];?></td>
									<td><?php echo $row['assigned_date'];?></td>
									<td><?php echo $row['Location'];?></td>
									<td><?php echo $row['status'];?></td>
										 <td><?php echo $row['comment'];?></td>
									<td><?php echo $row['branch_name'];?></td>
								<!--	<td><?php echo number_format($total,2);?></td>-->
									
				
						</td>
                      </tr>

		<?php }?>
		  
                    </tbody>
                    <tfoot>
                      <tr>
					<a class = "btn btn-success btn-print" href = "" onclick="printContent('div3')"><i class ="glyphicon glyphicon-print"  ></i> Print Report</a>
           <th><font color="red">Results: <?php echo $count ?></th>
		
                     <th style="text-align:right;" colspan="14">Grand Total
					 
                     <?php echo number_format($grand,2);?></th> 
					  <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>
					 <h5><b>Supplier: </b><?php echo $_POST['suppliers'] ?></h5>
					 <br>

 
    
					
    	              </tr> 
                    
						</table>
						<br><br>
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
        <?php } }?>           
            </div><!-- /.box-body -->
			</table>		  
	<?php
if (isset($_POST['viewcat']))
  {
 
	  
	  
?>	    
					<div id="div4" class="panel-body">
				
			
				
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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";

	$branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_name='$QA'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
    
        
?>			    

                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <!-- <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>-->
	  
	   
  	  
                 <table id="reporttbl2" class="table table-bordered table-hover" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                      	
                   <th class="serial">Serial #</th>
						<th class="barcode">Barcode</th>
						<th class="invoice_no">Invoice No.</th>
                        <th class="prod_name">Name</th>
                        <th class="prod_model">Model</th>
						            <th class="supplier">Supplier</th>
                 <!--       <th>Qty</th>-->
            						<th class="price">Price</th>
            						<th class="category">Category</th>
            						<th class="purchase_date">Purchase Date</th>
										<th class="assigned_to">Assigned To</th>
											<th class="assigned_date">Assigned Date</th>
									<th class="location">Location</th>
										<th class="status">Status</th>
	                                   <th class="comment">Comment</th>
									<th class="department">Department</th>
									<!--<th>Total</th>-->
                      </tr>
                    </thead>
                    <tbody>



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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";
		
		$query=mysqli_query($con,"select * from qa_department where cat_name='".$_POST['categories']."'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query);
		
		$check2 = mysqli_num_rows($query);
		if ($check2 == 0) {
		
			echo "<script type=text/javascript>";
			echo "alert ('NO RESULT!')";
			echo "</script>";
		}
		else{
		
		$grand=0;
		while($row=mysqli_fetch_array($query)){
			$total=$row['prod_price'];
			$grand+=$total;
			
		
?>
						
          <tr>
                      	
                       <td><?php echo $row['serial'];?></td>
						<td><?php echo $row['barcode_tag'];?></td>
						<td><?php echo $row['Invoice_No'];?></td>
                        <td><?php echo $row['prod_name'];?></td>
                        <td><?php echo $row['prod_model'];?></td>
						            <td><?php echo $row['supplier_name'];?></td>
                      <!--  <td><?php echo $row['prod_qty'];?></td>-->
            						<td><?php echo number_format($row['prod_price'],2);?></td>
            						<td><?php echo $row['cat_name'];?></td>
									<td><?php echo $row['purchase_date'];?></td>
									<td><?php echo $row['assigned_to'];?></td>
									<td><?php echo $row['assigned_date'];?></td>
									<td><?php echo $row['Location'];?></td>
									<td><?php echo $row['status'];?></td>
									  <td><?php echo $row['comment'];?></td>
									<td><?php echo $row['branch_name'];?></td>
								<!--	<td><?php echo number_format($total,2);?></td>-->
									
				
						</td>
                      </tr>

		<?php }?>
		  
                    </tbody>
                    <tfoot>
                      <tr>
					<a class = "btn btn-success btn-print" href = "" onclick="printContent('div4')"><i class ="glyphicon glyphicon-print"  ></i> Print Report</a>
          <th><font color="red">Results: <?php echo $count ?></th>
		
	 
                   <th style="text-align:right;" colspan="14">Grand Total	
                       
                               
                  <?php echo number_format($grand,2);?></th> 
					  <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>
					 <h5><b>Category: </b><?php echo $_POST['categories'] ?></h5>
					 <br>

 
    
					
    	              </tr> 
                    
						</table>
						<br><br>
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
        <?php } }?>           
            </div><!-- /.box-body -->
			</table>	  
		  
		  
		  
		  
		  
 <?php
if (isset($_POST['display']))
  {
    $date=$_POST['date'];
    $date=explode('-',$date);
    $branch=$_SESSION['branch'];    
	
      $start=date("Y/m/d",strtotime($date[0]));
      $end=date("Y/m/d",strtotime($date[1]));
	  
	  
	  
?>	    
					<div id="div1" class="panel-body">
				
					<div class="box-body">
				
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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";

	$branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_name='$QA'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
    
        
?>			    

                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <!-- <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>-->
	 
	   
                 <table id="reporttbl2" class="table table-bordered table-hover" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                      	
                <th class="serial">Serial #</th>
						<th class="barcode">Barcode</th>
						<th class="invoice_no">Invoice No.</th>
                        <th class="prod_name">Name</th>
                        <th class="prod_model">Model</th>
						            <th class="supplier">Supplier</th>
                 <!--       <th>Qty</th>-->
            						<th class="price">Price</th>
            						<th class="category">Category</th>
            						<th class="purchase_date">Purchase Date</th>
										<th class="assigned_to">Assigned To</th>
											<th class="assigned_date">Assigned Date</th>
									<th class="location">Location</th>
										<th class="status">Status</th>
										  <th class="comment">Comment</th>
									<th class="department">Department</th>
						<!--			<th>Total</th>-->
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
		$HR = "HR Department";
		$Admin = "Admin Department";
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";
	 		
		$query=mysqli_query($con,"select * from qa_department where branch_name='$QA' and date(purchase_date)>='$start' and date(purchase_date)<='$end'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query);
		
		$check2 = mysqli_num_rows($query);
		if ($check2 == 0) {
		
			echo "<script type=text/javascript>";
			echo "alert ('NO RESULT!')";
			echo "</script>";
		}
		else{
		
		$grand=0;
		while($row=mysqli_fetch_array($query)){
			$total=$row['prod_price'];
			$grand+=$total;
			
		
?>
						
          <tr>
                      	
                        <td><?php echo $row['serial'];?></td>
						<td><?php echo $row['barcode_tag'];?></td>
						<td><?php echo $row['Invoice_No'];?></td>
                        <td><?php echo $row['prod_name'];?></td>
                        <td><?php echo $row['prod_model'];?></td>
						            <td><?php echo $row['supplier_name'];?></td>
                    <!--    <td><?php echo $row['prod_qty'];?></td>-->
            						<td><?php echo number_format($row['prod_price'],2);?></td>
            						<td><?php echo $row['cat_name'];?></td>
									<td><?php echo $row['purchase_date'];?></td>
									<td><?php echo $row['assigned_to'];?></td>
									<td><?php echo $row['assigned_date'];?></td>
									<td><?php echo $row['Location'];?></td>
									<td><?php echo $row['status'];?></td>
                                  <td><?php echo $row['comment'];?></td>
									<td><?php echo $row['branch_name'];?></td>
								<!--	<td><?php echo number_format($total,2);?></td>-->
									
				
						</td>
                      </tr>

		<?php }?>
		  
                    </tbody>
                    <tfoot>
                      <tr>
					<a class = "btn btn-success btn-print" href = "" onclick="printContent('div1')"><i class ="glyphicon glyphicon-print"  ></i> Print Report</a>
           <th><font color="red">Results: <?php echo $count ?></th>
	
                <th style="text-align:right;" colspan="10">Grand Total	
                       
                               
                            <?php echo number_format($grand,2);?></th> 
					  <h5 class="text-center"><b>Report as of <?php echo date("M d, Y",strtotime($start))." to ".date("M d, Y",strtotime($end));?></h5></b>
                 		<br>

 
    
					
    	              </tr> 
                    
						</table>
						<br><br>
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
        <?php } }?>           
            </div><!-- /.box-body -->
			</table>
	
<?php
if (isset($_POST['view']))
  {
 
	  
	  
?>	    
					<div id="div2" class="panel-body">
			
					<div class="box-body">
				
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
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";
		

	$branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from branch where branch_name='$QA'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
    
        
?>			    

                  <h5><b><?php echo $row['branch_name'];?></b> </h5>  
                  <h6>Address: <?php echo $row['branch_address'];?></h6>
                  <h6>Contact #: <?php echo $row['branch_contact'];?></h6>
				  <!-- <h5><b>Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>-->
	   
  	  		
                 <table id="reporttbl2" class="table table-bordered table-hover" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                      	
           <th class="serial">Serial #</th>
						<th class="barcode">Barcode</th>
						<th class="invoice_no">Invoice No.</th>
                        <th class="prod_name">Name</th>
                        <th class="prod_model">Model</th>
						            <th class="supplier">Supplier</th>
                    <!--    <th>Qty</th>-->
            						<th class="price">Price</th>
            						<th class="category">Category</th>
            						<th class="purchase_date">Purchase Date</th>
										<th class="assigned_to">Assigned To</th>
											<th class="assigned_date">Assigned Date</th>
									<th class="location">Location</th>
										<th class="status">Status</th>
                                <th class="comment">Comment</th>
									<th class="department">Department</th>
							<!--		<th>Total</th>-->
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
		$HR = "HR Department";
		$Admin = "Admin Department";
		$QA= "Quality Assurance Department";
		$NewFire= "New Fire Lottery Department";
	 		
		$query=mysqli_query($con,"select * from qa_department where branch_name='$QA'")or die(mysqli_error($con));
		$count=mysqli_num_rows($query);
		
		$check2 = mysqli_num_rows($query);
		if ($check2 == 0) {
		
			echo "<script type=text/javascript>";
			echo "alert ('NO RESULT!')";
			echo "</script>";
		}
		else{
		
		$grand=0;
		while($row=mysqli_fetch_array($query)){
			$total=$row['prod_price'];
			$grand+=$total;
			
		
?>
						
          <tr>
                      	
                      
									  <td><?php echo $row['serial'];?></td>
						<td><?php echo $row['barcode_tag'];?></td>
						<td><?php echo $row['Invoice_No'];?></td>
                        <td><?php echo $row['prod_name'];?></td>
                        <td><?php echo $row['prod_model'];?></td>
						            <td><?php echo $row['supplier_name'];?></td>
                    <!--    <td><?php echo $row['prod_qty'];?></td>-->
            						<td><?php echo number_format($row['prod_price'],2);?></td>
            						<td><?php echo $row['cat_name'];?></td>
									<td><?php echo $row['purchase_date'];?></td>
									<td><?php echo $row['assigned_to'];?></td>
									<td><?php echo $row['assigned_date'];?></td>
									<td><?php echo $row['Location'];?></td>
									<td><?php echo $row['status'];?></td>
                                      <td><?php echo $row['comment'];?></td>
									<td><?php echo $row['branch_name'];?></td>
								<!--	<td><?php echo number_format($total,2);?></td>-->
									
				
						</td>
                      </tr>

		<?php }?>
		  
                    </tbody>
                    <tfoot>
                      <tr>
					<a class = "btn btn-success btn-print" href = "" onclick="printContent('div2')"><i class ="glyphicon glyphicon-print"  ></i> Print Report</a>
           <th><font color="red">Results: <?php echo $count ?></th>

                    <th style="text-align:right;" colspan="14">Grand Total	
                       
                  
				  <?php echo number_format($grand,2);?></th> 
					<h5><b>Status Report: Product Inventory as of today, <?php echo date("M d, Y h:i a");?></b></h5>		
 <br>

 
    
					
    	              </tr> 
                    
						</table>
						<br><br>
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
        <?php } }?>           
            </div><!-- /.box-body -->
			</table>	

	
	 
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
<script src="../plugins/jQuery/jQuery-2.2.0.min.js"></script>
  <!-- Bootstrap 3.3.6 -->
  <script src="../bootstrap/js/bootstrap.min.js"></script>
  <!-- Select2 -->
  <script src="../plugins/select2/select2.full.min.js"></script>
  <!-- InputMask -->
  <script src="../plugins/input-mask/jquery.inputmask.js"></script>
  <script src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
  <script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
  <!-- date-range-picker -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
  <script src="../plugins/daterangepicker/daterangepicker.js"></script>
  <!-- bootstrap datepicker -->
  <script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
  <!-- bootstrap color picker -->
  <script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
  <!-- bootstrap time picker -->
  <script src="../plugins/timepicker/bootstrap-timepicker.min.js"></script>
  <!-- SlimScroll 1.3.0 -->
  <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
  <!-- iCheck 1.0.1 -->
  <script src="../plugins/iCheck/icheck.min.js"></script>
  <!-- FastClick -->
  <script src="../plugins/fastclick/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="../dist/js/app.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="../dist/js/demo.js"></script>
  <script src="content/js/jquery.min.js"></script>
<script src="content/js/bootstrap.min.js"></script>  
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
          $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
    );

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });

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
  <script>
  function printContent(el){
	  var restorepage = document.body.innerHTML;
	  var printcontent = document.getElementById(el).innerHTML;
	  document.body.innerHTML = printcontent;
	  window.print();
	  document.body.innerHTML = restorepage;
  }
  
  </script>
  <script type="text/javascript" src="js/bootstrap/bootstrap-dropdown.js"></script>
 <script>
     $(document).ready(function(){
        $('.dropdown-toggle').dropdown()
    });
</script>
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
	  
	  

	  $(function () {
    var $chk = $("#grpChkBox input:checkbox"); 
    var $tbl = $("#reporttbl2");
    var $tblhead = $("#reporttbl2 th");
 
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