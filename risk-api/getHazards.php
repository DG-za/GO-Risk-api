<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$risks = [];
$sql = "SELECT * FROM control_hazard";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']      = $row['id'];
    $risks[$cr]['name'] = $row['name'];
    $cr++;
  }
    
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>