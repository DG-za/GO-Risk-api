<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$risks = [];
$sql = "SELECT * FROM controls";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']      = $row['id'];
    $risks[$cr]['hazard_desc'] = $row['hazard_desc'];
    $risks[$cr]['name'] = $row['name'];
    $risks[$cr]['threshold'] = floatval($row['threshold']);
    $cr++;
  }
    
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>