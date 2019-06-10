<?php

include('../dist/includes/dbcon.php');

//header to give the order to the browser
header('Content-Type: text/csv');
header('Content-Disposition: attachment;filename=exported-data.csv');
$today = date("Y-m-d");

//select table to export the data
$select_table=mysqli_query($con,"select * from newfire_records_assets where date = '$today'")or die(mysqli_error());
$rows = mysqli_fetch_assoc($select_table);

if ($rows)
{
getcsv(array_keys($rows));
}
while($rows)
{
getcsv($rows);
$rows = mysqli_fetch_assoc($select_table);
}

// get total number of fields present in the database
function getcsv($no_of_field_names)
{
$separate = '';


// do the action for all field names as field name
foreach ($no_of_field_names as $field_name)
{
if (preg_match('/\\r|\\n|,|"/', $field_name))
{
$field_name = '' . str_replace('', $field_name) . '';
}
echo $separate . $field_name;

//sepearte with the comma
$separate = ',';
}

//make new row and line
echo "\r\n";
}
?>