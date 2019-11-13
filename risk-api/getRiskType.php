<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$risk_type = [];
$sql = "SELECT id, name FROM risk_cat";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risk_type[$cr]['id']    = $row['id'];
    $risk_type[$cr]['name'] = $row['name'];
    $cr++;
  }
    
  echo json_encode(['data'=>$risk_type]);
}
else
{
  http_response_code(404);
}

?>