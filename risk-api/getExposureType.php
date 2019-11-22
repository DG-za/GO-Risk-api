<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');
require 'connect.php';
$risks = [];
$sql = "SELECT * FROM risk_exposure_type";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']  = $row['id'];
    $risks[$cr]['type'] = $row['type'];
    $risks[$cr]['exposure_comments'] = $row['exposure_comments'];
    $cr++;
  } 
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>