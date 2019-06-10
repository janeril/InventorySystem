	<form method="POST" action="it_assets++.php">
		<button type="submit" class="btn btn-danger btn-s" id="reset" name="reset">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							Reset</button>
							
					

<?php
include('../dist/includes/dbcon.php');

		$CS= "CS Department";
		$IT ="IT Department";
		$Finance = "Finance Department";
		$Production = "Production Department";
		$Marketing = "Marketing Department";
		$Sportsbook = "Sportsbook Department";
		$HRAD = "HRAD Department";
		
	if(isset($_POST['reset'])){
		
	?>
				 
<br><br>
  <table id="example2" class="table table-bordered table-hover" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                        <th>Serial #</th>
                        <th>Product Name</th>
                        <th>Product Model</th>
						            <th>Supplier</th>
                        <th>Qty</th>
            						<th>Price</th>
            					<th>Category</th>
            						<th>Puchase Date</th>
									<th>Status</th>
										<th>Assigned to</th>
											<th>Assigned date</th>
									<th class= "hidden-print">Action</th>
                      </tr>
                    </thead>
                    <tbody>
					
	<?php 

		echo "<script>document.location='it_assets.php'</script>";
		
		?>
		
	<?php } ?>