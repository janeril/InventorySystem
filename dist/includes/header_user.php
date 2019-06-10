<?php
//session_start();
if(empty($_SESSION['id'])):
header('Location:../user+index.php');
endif;
date_default_timezone_set("Asia/Manila"); 
?>
<?php
include('../dist/includes/dbcon.php');

$branch=$_SESSION['branch'];
$query=mysqli_query($con,"select * from branch where branch_id='$branch'")or die(mysqli_error($con));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
?>

       <header class="main-header">
         <nav class="navbar navbar-static-top">
          <div class="">

	          <div class="navbar-header">
              <a href="home_user.php" class="navbar-brand">
			  <b><i class="glyphicon glyphicon-home"></i> <?php echo $branch_name;?> </b></a>

                
				 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
        
              </button>
			  
            </div>

             <!-- Navbar Right Menu -->
              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                  <!-- Messages: style can be found in dropdown.less-->
				  <li class="">
                
                    <a href="userlog.php" class="dropdown-toggle">
                      <i class="glyphicon glyphicon-list-alt"></i>
                      History Log
                    </a>
                  </li>
                 
					
					
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						  <li><!-- start notification -->
                            <a href="UserIT+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> IT Department
                            </a>
                          </li><!-- end notification -->
						              <li><!-- start notification -->
							<li><!-- start notification -->
                            <a href="UserFinance+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Finance Department
                            </a>
                          </li>
				  <li><!-- start notification -->
                            <a href="UserHrad+Department.php" name="CS">
                              <i class="glyphicon glyphicon-user text-green" name="CS" value="CS Department"></i> HR Department
                            </a>
                          </li>
                          </li><!-- end notification -->
                          <li><!-- start notification -->
                         <li><!-- start notification -->
                            <a href="UserHrad+Department.php" name="CS">
                              <i class="glyphicon glyphicon-user text-green" name="CS" value="CS Department"></i> Admin Department
                            </a>
                          </li>    
                          </li><!-- end notification -->
						  <li><!-- start notification -->
                            <a href="UserCS+Department.php" name="CS">
                              <i class="glyphicon glyphicon-user text-green" name="CS" value="CS Department"></i> CS Department
                            </a>
                          </li><!-- end notification -->
						 
						  <li><!-- start notification -->
                            <a href="UserSportsbook+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Sportsbook Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="UserProduction+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Production Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="UserMarketing+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Marketing Department
                            </a>
                          </li><!-- end notification -->
                        <?php
                        $queryprod=mysqli_query($con,"select prod_name from product where prod_qty<=reorder and branch_id='$branch'")or die(mysqli_error());
			  while($rowprod=mysqli_fetch_array($queryprod)){
			?>
                          <li><!-- start notification -->
                            
                          </li><!-- end notification -->
                          <?php }?>
                        </ul>
                      </li>
                     
                    </ul>
                  </li>
				
                  <!-- Tasks Menu -->
				 
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						 <!-- end notification -->
						              <li><!-- start notification -->
                          
                          </li><!-- end notification -->
                          <li><!-- start notification -->
                            
                         <!-- </li><!-- end notification -->
						   <!--<li><!-- start notification -->
                            <!-- <a href="product.php">
                              <i class="glyphicon glyphicon-cutlery text-green"></i> Product
                            </a>
                          </li><!-- end notification -->
						 
						  <li><!-- start notification -->
                            <a href="supplier.php">
                              <i class="glyphicon glyphicon-send text-green"></i> Supplier
                            </a>
                          </li><!-- end notification -->
        
						 
                        </ul>
                      </li>
                     
                    </ul>
                  </li>
                  <!-- Tasks Menu -->
				   <!-- Tasks Menu -->
				   
                    <ul class="dropdown-menu">
                      <li>
                      </li>
                     
                    </ul>
                  </li>
                  <!-- Tasks Menu -->
				   <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                     <li><!-- start notification -->
                          
							
							 <!-- <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                  <!--   <li><!-- start notification -->
                       <!--     <a href="reportinventory.php">
                              <i class="glyphicon glyphicon-list text-green"></i>Report
                            </a>-->
							
					 <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Reports <span class="caret"></span>
                    </a>
					
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->

                        <ul class="menu">
						
					
						<li><!-- start notification -->
                            <a href="all_report+.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> All Department
                            </a>
                       </li>

						  <li><!-- start notification -->
                            <a href="IT_Reports.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> IT Department
                            </a>
                          </li><!-- end notification -->
						              <li><!-- start notification -->
							<li>
				
							<!-- start notification -->
                            <a href="Finance_Reports.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Finance Department
                            </a>
                          </li>
				 <li><!-- start notification -->
                            <a href="HR_Reports.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow" name="CS" value="CS Department"></i> HR Department
                            </a>
                          </li><!-- end notification -->
                          <li><!-- start notification -->
                           <li><!-- start notification -->
                            <a href="Admin_Reports.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow" name="CS" value="CS Department"></i> Admin Department
                            </a>
                          </li>  
                          </li><!-- end notification -->
						  <li><!-- start notification -->
                            <a href="CS_Reports.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow" name="CS" value="CS Department"></i> CS Department
                            </a>
                          </li><!-- end notification -->
						 
						  <li><!-- start notification -->
                            <a href="Sportsbook_Reports.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Sportsbook Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="Production_Reports.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Production Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="Marketing_Reports.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Marketing Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="Sales_Reports.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Sales Department
                            </a>
                          </li><!-- end notification -->
                        <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <!-- <a href="stockin.php">
                      <i class="glyphicon glyphicon-object-align-vertical"></i> Stockin
                      
                    </a>
                           <!--<li><!-- start notification -->
                           <!-- <a href="inventory.php">
                              <i class="glyphicon glyphicon-ok text-green"></i>Inventory
                            </a>-->
                         <!-- start notification -->
                        <!-- <a href="sales.php">
                              <i class="glyphicon glyphicon-usd text-blue"></i>Sales
                            </a>
                          </li><!-- end notification -->
					    <!--<li><!-- start notification -->
                        <!-- <a href="receivables.php">
                              <i class="glyphicon glyphicon-th-list text-redr"></i>Account Receivables
                            </a>
                          </li><!-- end notification -->
						 <!-- <li><!-- start notification -->
                        <!-- <a href="income.php">
                              <i class="glyphicon glyphicon-th-list text-redr"></i>Branch Income
                            </a>
                          </li><!-- end notification -->
                         <!-- <li><!-- start notification -->
                         <!--<a href="purchase_request.php">
                              <i class="glyphicon glyphicon-usd text-blue"></i>Purchase Request
                            </a>-->
							
                          </li><!-- end notification -->
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <!-- Tasks Menu -->
				   <li class="nav-item dropdown">
                    <!-- Menu Toggle Button -->
                    <a href="user+profile.php" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="glyphicon glyphicon-cog text-orange"></i>
                      <?php echo $_SESSION['name'];?><span class="caret"></span>
                    </a>
                 	<ul class="dropdown-menu">
                  <li>
                    <!-- Menu Toggle Button -->
					<a href="#response"class="dropdown-item" data-toggle="modal" data-target="#response"><i class="glyphicon glyphicon-pencil text-red"></i>Edit Profile </a>
                    <a href="user+logout.php" class="dropdown-toggle">
                      <i class="glyphicon glyphicon-off text-red"></i> Logout 
                      
                    </a>
                  </li>
                  
                </ul>
				
					<div class="modal fade" id="response" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="background-color: rgba(0, 0, 0, 0.5);">
<div class="modal-dialog" role="document" style="width:300px;">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"
                aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Update Account Details</h4>
   
		
		<?php
		    $id=$_SESSION['id'];
		      $query=mysqli_query($con,"select * from user where user_id='$id'")or die(mysqli_error());
				$row=mysqli_fetch_array($query);
		  ?>	
		  <!-- Main content -->
          <section class="content" style="width:300px;" align="center">
            <div class="row">
	   
		   <!--<div class="input-group col-md-12">-->
					<div class="input-group col-md-11" align="center">
              <div class="box box-primary" align="center">
                <div class="box-header">
                  <!--<h3 class="box-title">Update Account Details</h3>-->
                </div>
                <div class="box-body" style="height: 450px;">
                  <!-- Date range -->
                  <form id = "formE"method="post" action="userprofile_update.php" onsubmit="return myFunction()">
  
                  <div class="form-group">
                    <label for="date">Full Name</label>
                    <!--<div class="input-group col-md-12">-->
					<div class="input-group col-md-10">
                      <input type="text" class="form-control pull-right" value="<?php echo $row['name'];?>" name="name" placeholder="Full Name" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  <div class="form-group">
                    <label for="date">Username</label>
                     <!--<div class="input-group col-md-12">-->
					<div class="input-group col-md-10">
                      <input type="text" class="form-control pull-right" value="<?php echo $row['username'];?>" name="username" placeholder="Username" required>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  <div class="form-group">
                    <label for="date">Change Password</label>
                    <!--<div class="input-group col-md-12">-->
					<div class="input-group col-md-10">
                      <input type="password" class="form-control pull-right" id="password" name="password" placeholder="Type new password">
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  <div class="form-group">
                    <label for="date">Confirm New Password</label>
                    <!--<div class="input-group col-md-12">-->
					<div class="input-group col-md-10">
                      <input type="password" class="form-control pull-right" id="cfmPassword" name="newpassword" placeholder="Re-Enter new password">
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
				  
					<div class="form-group">
                    <label for="date">Enter Old Password to confirm changes</label>
                   <!--<div class="input-group col-md-12">-->
					<div class="input-group col-md-10">
                      <input type="password" class="form-control pull-right" id="date" name="passwordold" placeholder="Type old password" required>
                    </div><!-- /.input group -->
					
                  </div><!-- /.form group -->
				  
                
        <div class="modal-footer">
            
			
                      <input class = "btn btn-primary" type="submit" value="Save Changes">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
           <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
			  <div class="form-group">
                    <!--<div class="input-group">
                      <input class = "btn btn-primary" type="submit" value="Submit">-->
					  
					 <!--<button type="reset" class="btn" id="dattyerange-btn"> 
                        Clear
                      </button>
                    </div>
                  </div><!-- /.form group -->
				</form>	
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
		
		</div>
        </div>
    </div>
</div>
           </div><!-- /.navbar-custom-menu -->
          </div><!-- /.container-fluid -->
		  
        </nav> 
		
      </header>
           