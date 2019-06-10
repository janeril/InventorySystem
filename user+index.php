<?php session_start();
?>



<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login - <?php include('dist/includes/title.php');?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
   <body class="hold-transition login-page" style="background:white" >
    <div class="login-box" >
      <div class="login-logo" >
	  
        
      </div><!-- /.login-logo -->
      <div class="login-box-body" style= "background: url('/Admin_Inventory/bg1.jpg') no-repeat bottom; border: 1px solid orange">
       <p class="login-box-msg">
	
		<img src="/Admin_Inventory/logo2.png">
			<img  src="/Admin_Inventory/inventory_logo.png">
       <form method="POST" action="user+login.php">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Enter Username" name="username" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
		  <!--<div class="form-group has-feedback">
            <select class="form-control select2" style="width:100%" name="branch" required>
                <option value="Please select Department">--Please Select Department--</option>                  
				<!--<?php
				include('dist/includes/dbcon.php');

                   $query3=mysqli_query($con,"select * from user_branch order by branch_name")or die(mysqli_error($con));
                      while($row3=mysqli_fetch_array($query3)){
                ?>
					 
                    <option value="<?php echo $row3['branch_id'];?>"><?php echo $row3['branch_name'];?></option>
                  <?php }?> -->
                </select>
	
				
				
      <!--    </div> -->
          <div class="row">
			<div class="col-xs-6 pull-right">
		  <button type="reset" class="btn btn-primary btn-block btn-flat">Clear</button>
			  <span class="glyphicon glyphicon-danger" aria-hidden="true"></span>
			</div><!-- /.col -->
			<div class="col-xs-6 pull-right">
            <button type="submit" name="login" class="btn btn-primary btn-block btn-flat">Sign In
					      <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
			</div><!-- /.col -->
          </div>
        </form>
			
        

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
      
           
   
<!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
