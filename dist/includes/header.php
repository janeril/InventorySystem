<?php
//session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
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
              <a href="home.php" class="navbar-brand">
			  <b><i class="glyphicon glyphicon-home"></i> <?php echo $branch_name;?> </b></a>

                
				 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
        
              </button>
			  
            </div>

            <!-- Navbar Right Menu -->
              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                  <!-- Messages: style can be found in dropdown.less-->
			
                
                   <!-- <a href="log.php" class="dropdown-toggle">
                      <i class="glyphicon glyphicon-list-alt"></i>
                      History Log
                    </a>
                  </li>
                  <!-- Notifications Menu -->
                  <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                              <i class="glyphicon glyphicon-user text-green"></i> Product List <span class="caret"></span>
                    </a>
							
					
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						  <li><!-- start notification -->
                            <a href="IT+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> IT Department
                            </a>
                          </li><!-- end notification -->
						              <li><!-- start notification -->
							<li><!-- start notification -->
                            <a href="Finance+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Finance Department
                            </a>
                          </li>
				  <li><!-- start notification -->
                            <a href="HR+Department.php" name="CS">
                              <i class="glyphicon glyphicon-user text-green" name="HR" value="HR Department"></i> HR Department
                            </a>
                          </li>
                          </li><!-- end notification -->
                          <li><!-- start notification -->
                             <li><!-- start notification -->
                            <a href="Admin+Department.php" name="CS">
                              <i class="glyphicon glyphicon-user text-green" name="Admin" value="Admin Department"></i> Admin Department
                            </a>
                          </li>
                          </li><!-- end notification -->
						  <li><!-- start notification -->
                            <a href="CS+Department.php" name="CS">
                              <i class="glyphicon glyphicon-user text-green" name="CS" value="CS Department"></i> CS Department
                            </a>
                          </li><!-- end notification -->
						 
						  <li><!-- start notification -->
                            <a href="Sportsbook+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Sportsbook Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="Production+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Product Development Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="Marketing+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Marketing Department
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="Sales+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Sales Department
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="WS+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> WS Department
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="Management.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Management
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="Integration+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Integration Department
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="QA+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> Quality Assurance Department
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="NEWFIRE+Department.php">
                              <i class="glyphicon glyphicon-user text-green"></i> New Fire Lottery Department
                            </a>
                          </li>
						  <!-- end notification -->
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
				   <!-- Tasks Menu -->
			
				    <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown">
					   
                      <i class="glyphicon glyphicon-object-align-vertical"></i> Assets  <span class="caret"></span>
					</a>
                    <ul class="dropdown-menu">
                    
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						  <li><!-- start notification -->
                            <a href="it_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> IT Department
                            </a>
                          </li>
						
						  <li><!-- start notification -->
                            <a href="finance_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Finance Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="hr_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> HR Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="admin_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Admin Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="cs_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> CS Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="sportsbook_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Sportsbook Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="production_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Production Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="marketing_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Marketing Department
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="sales_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Sales Department
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="ws_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> WS Department
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="management_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Management
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="integration_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Integration Department
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="qa_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> Quality Assurance Department
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="newfire_assets.php">
                              <i class="glyphicon glyphicon-object-align-vertical"></i> New Fire Lottery Department
                            </a>
                          </li>
						  
						</li> </ul>
                      </li>
                    </ul>
                  </li>
				</li>
                  
					
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						<li><!-- start notification -->
                            <a href="all_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> All Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="it_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> IT Department
                            </a>
                          </li><!-- end notification -->
						              <li><!-- start notification -->
							<li><!-- start notification -->
                            <a href="finance_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Finance Department
                            </a>
                          </li>
				 <li><!-- start notification -->
                            <a href="hr_report.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow"></i> HR Department
                            </a>
                          </li><!-- end notification -->
                          <li><!-- start notification -->
                    <li><!-- start notification -->
                            <a href="admin_report.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Admin Department
                            </a
                          </li>        
                          </li><!-- end notification -->
						  <li><!-- start notification -->
                            <a href="cs_report.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow"></i> CS Department
                            </a>
                          </li><!-- end notification -->
						 
						  <li><!-- start notification -->
                            <a href="sportsbook_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Sportsbook Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="production_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Product Development Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="marketing_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Marketing Department
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="sales_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Sales Department
                            </a>
                          </li>
						   <!-- end notification -->
							<li><!-- start notification -->
                            <a href="ws_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> WS Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="management_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Management
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="integration_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Integration Department
                            </a>
                          </li>
						     <li><!-- start notification -->
                            <a href="qa_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Quality Assurance Department
                            </a>
                          </li>
						     <li><!-- start notification -->
                            <a href="newfire_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> New Fire Lottery Department
                            </a>
                          </li>
						  
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
				  <li class="">
                    <!-- Menu Toggle Button -->
                    <a href="supplier.php" class="dropdown-toggle">
                      <i class="glyphicon glyphicon-send"></i> Supplier
                   
                    </a>
                  </li>
				   <!-- Tasks Menu -->
				 <li class="">
						  <li><!-- start notification -->
                            <a href="category.php">
                              <i class="glyphicon glyphicon-send"></i> Category
                            </a>
							 <!-- Tasks Menu -->
				   <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                     <li><!-- start notification -->
                             <!-- <a href="inventory.php">
                              <i class="glyphicon glyphicon-tasks text-green"></i>Inventory
                            </a>
							
							 <!-- <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                  <!--   <li><!-- start notification -->
                       <!--     <a href="reportinventory.php">
                              <i class="glyphicon glyphicon-list text-green"></i>Report
                            </a>-->
							
					 <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                              <i class="glyphicon glyphicon-list"></i> Reports <span class="caret"></span>
                    </a>
					
                    <ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
						<li><!-- start notification -->
                            <a href="all_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> All Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="it_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> IT Department
                            </a>
                          </li><!-- end notification -->
						              <li><!-- start notification -->
							<li><!-- start notification -->
                            <a href="finance_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Finance Department
                            </a>
                          </li>
				 <li><!-- start notification -->
                            <a href="hr_report.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow"></i> HR Department
                            </a>
                          </li><!-- end notification -->
                          <li><!-- start notification -->
                    <li><!-- start notification -->
                            <a href="admin_report.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Admin Department
                            </a
                          </li>        
                          </li><!-- end notification -->
						  <li><!-- start notification -->
                            <a href="cs_report.php" name="CS">
                              <i class="glyphicon glyphicon-list text-yellow"></i> CS Department
                            </a>
                          </li><!-- end notification -->
						 
						  <li><!-- start notification -->
                            <a href="sportsbook_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Sportsbook Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="production_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Product Development Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="marketing_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Marketing Department
                            </a>
                          </li>
						   <li><!-- start notification -->
                            <a href="sales_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Sales Department
                            </a>
                          </li>
						   <!-- end notification -->
							<li><!-- start notification -->
                            <a href="ws_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> WS Department
                            </a>
                          </li>
						  <li><!-- start notification -->
                            <a href="management_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Management
                            </a>
                          </li>
						    <li><!-- start notification -->
                            <a href="integration_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Integration Department
                            </a>
                          </li>
						     <li><!-- start notification -->
                            <a href="qa_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> Quality Assurance Department
                            </a>
                          </li>
						     <li><!-- start notification -->
                            <a href="newfire_report.php">
                              <i class="glyphicon glyphicon-list text-yellow"></i> New Fire Lottery Department
                            </a>
                          </li>
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
				  <li class="">
                    <!-- Menu Toggle Button -->
                    <a href="log.php" class="dropdown-toggle">
                      <i class="glyphicon glyphicon-list-alt"></i>
                      History Logs
                    </a>
                  </li>
           <!-- Tasks Menu -->
				 <!-- <li class="dropdown notifications-menu">-->
				 
				    <li class="nav-item dropdown">
                    <!-- Menu Toggle Button -->
                    <a href="profile.php" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="glyphicon glyphicon-cog text-orange"></i>
                      <?php echo $_SESSION['name'];?><span class="caret"></span>
                    </a>
					<ul class="dropdown-menu">
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                       
                 <!--   <a href="profile.php">
                      <i class="glyphicon glyphicon-pencil text-red"></i> Edit Profile
                        <!-- Inner Menu: contains the notifications --> 
						
						<a href="#response"class="dropdown-item" data-toggle="modal" data-target="#response"><i class="glyphicon glyphicon-pencil text-red"></i>Edit Profile </a>
                       
                    <a href="user+logout.php">
                      <i class="glyphicon glyphicon-off text-red"></i> Logout </a>
                 </a>
                  </div>
				   </li>
                </ul>
				<div class="modal fade" id="response" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="background-color: rgba(0, 0, 0, 0.5);" style="width:300px;">
<div class="modal-dialog" role="document"style="width:300px;">
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
          <section class="content"  style="width:300px;" align="center">
            <div class="row">
	   
		   <!--<div class="input-group col-md-12">-->
					<div class="input-group col-md-11"align="center">
              <div class="box box-primary" align="center">
              
                  <!--<h3 class="box-title">Update Account Details</h3>-->
                </div>
                <div class="box-body" style="height: 450px;">
                  <!-- Date range -->
                  <form id = "formE"method="post" action="profile_update.php" onsubmit="return myFunction()">
  
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

	  