<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$myData = [];
$sql = "SELECT conseq_cat, conseq_type, conseq_desc FROM conseq_cat_desc";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $myData[$cr]['conseq_cat']    = $row['conseq_cat'];
    $myData[$cr]['conseq_type'] = $row['conseq_type'];
    $myData[$cr]['conseq_desc'] = $row['conseq_desc'];
    $cr++;
  }
    
  echo json_encode(['data'=>$myData]);
}
else
{
  http_response_code(404);
}

?>