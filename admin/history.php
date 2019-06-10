
<?php include 'header.php';?>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include 'main_sidebar.php';?>

        <!-- top navigation -->
       <?php include 'top_nav.php';?>      <!-- /top navigation -->

        <!-- page content -->
		
		 <div class="wrapper" >
      <?php 
      include('../dist/includes/dbcon.php');
      ?>
        <div class="right_col" role="main"> 
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">					
						<div class = "x-panel">
						 <table id="datatable" class="table table-striped table-bordered table-responsive">
							 <thead>
						    <section class="content" >
            <div class="row">
	     
			
            <div class="col-xs-20">
              <div class="box box-primary">
    
                <div class="box-header" align="center">
                  <h1 class="box-title" align="center"><b>History Logs</b></h1>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="display table table-bordered table-striped" >
                    <thead align="center">
					<h2 class="bg-primary" >Today</h2>
					<br>
					 <th>User</th>
						<th>Activity</th>
						<th>Date</th>
						<th></th>
                      <tr>
                      <!--  <th>Logs</th>-->
                      </tr>
                    </thead>
                    <tbody>
					
   	  
                 <?php
function get_timeago( $ptime )
{
    $estimate_time = time() - $ptime;

    if( $estimate_time < 1 )
    {
        return 'less than 1 second ago';
    }

    $condition = array( 
                12 * 30 * 24 * 60 * 60  =>  'year',
                30 * 24 * 60 * 60       =>  'month',
                24 * 60 * 60            =>  'day',
                60 * 60                 =>  'hour',
                60                      =>  'minute',
                1                       =>  'second'
    );

    foreach( $condition as $secs => $str )
    {
        $d = $estimate_time / $secs;

        if( $d >= 1 )
        {
            $r = round( $d );
            return 'about ' . $r . ' ' . $str . ( $r > 1 ? 's' : '' ) . ' ago';
        }
    }
}
?>
<?php


		$query=mysqli_query($con,"select * from history_log	  natural join user WHERE  DATE(date) = CURDATE() order by date desc")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
		$timeago=get_timeago(strtotime($row['date']));		
?>


                      <tr>
					  <td><?php echo $row['name'];?></td>
					  <td><?php echo $row['action'];?></td>
					 <td><?php echo $row['date'];?></td>
					 <td><?php echo "<p style='color:red;'>".$timeago; ?></td>
					 

                           
                      </tr>
				
<?php }?>			  
                 <table class="display table table-bordered table-striped">
                    <thead align="center">
					<h2 class="bg-primary">Yesterday</h2>
					<br>
		
						<th>User</th>
						<th>Activity</th>
						<th>Date</th>
				
                      <tr>
                      <!--  <th>Logs</th>-->
                      </tr>
                    </thead>
                    <tbody>
					

<?php
		$query=mysqli_query($con,"select * from history_log	  natural join user WHERE DATE(date) = CURDATE() - INTERVAL 1 day order by date desc")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
				
?>


                      <tr>
					  <td><?php echo $row['name'];?></td>
					  <td><?php echo $row['action'];?></td>
					  <td> <?php echo $row['date'];?></td>
					
                           
                      </tr>
				   	  
                 
<?php }?>					  
	      
            
                  <table class="display table table-bordered table-striped">
                    <thead>
					<h2 class="bg-primary">Last Month</h2>
                      <tr>
					  	<th>User</th>
						<th>Activity</th>
						<th>Date</th>
						
                      <!--  <th>Logs</th>-->
                      </tr>
                    </thead>
                    <tbody>
					

<?php
		$query=mysqli_query($con,"select * from history_log	  natural join user WHERE MONTH(date)=MONTH(DATE_ADD(Now(), INTERVAL -1 MONTH)) AND YEAR(date)=YEAR(DATE_ADD(Now(), INTERVAL -1 MONTH)) order by date desc")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
				
?>


                      <tr>
					  <td><?php echo $row['name'];?></td>
					  <td><?php echo $row['action'];?></td>
					  <td><?php echo $row['date'];?></td>
					

                           
                      </tr>
				   	  
                 
<?php }?>							  
	      
            
                  <table id="example2" class="display table table-bordered table-striped">
                    <thead>
				<h2 class="bg-primary">Older</h2>
                      <tr>
					  	<th>User</th>
						<th>Activity</th>
						<th>Date</th>
					
                      <!--  <th>Logs</th>-->
                      </tr>
                    </thead>
                    <tbody>
					
					
					

<?php
		$query=mysqli_query($con,"select * from history_log	  natural join user WHERE  date  < CURRENT_DATE - INTERVAL '2' MONTH order by date desc")or die(mysqli_error());
		while($row=mysqli_fetch_array($query)){
				
?>


                      <tr>
					  <td><?php echo $row['name'];?></td>
					  <td><?php echo $row['action'];?></td>
					  <td><?php echo $row['date'];?></td>

                           
                      </tr>
				   	  
                 
<?php }?>					  		  
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
    <script src="../plugins/select2/select2.full.min.js"></script>
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

    $('#example2').DataTable();

} );
	
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
		