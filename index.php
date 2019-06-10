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
      <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">
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

  <body class="hold-transition login-page" >
    <div class="login-box" >
      <div class="login-logo" >
	  
        
      </div><!-- /.login-logo -->
      <div class="login-box-body" style= "background: url('/Admin_Inventory/Admin_Inventory/images.jpg') no-repeat center;">
       <p class="login-box-msg">
	
		<img  src="/Admin_Inventory/Admin_Inventory/logo2.png">
		<img  src="/Admin_Inventory/Admin_Inventory/inventory_logo.png">
	 <br>
        <form action="login.php" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Enter Username" name="username" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
		   
          <div class="row">
			<div class="col-xs-6 pull-right">
			  <button type="reset" class="btn btn-primary btn-block btn-flat">Clear</button>
			  <span class="glyphicon glyphicon-danger" aria-hidden="true"></span>
            </div><!-- /.col -->
			
			<div class="col-xs-6 pull-right">
             <button type="submit" name="login" class="btn btn-primary btn-block btn-flat">Sign In
					      <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
						  
			</div>
			<!-- /.col -->
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
