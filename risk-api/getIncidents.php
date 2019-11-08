<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');
require 'connect.php';
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$risk = mysqli_real_escape_string($con, (int)$request->data->id);
$condition = '';
if($risk!=0){
  $condition = " WHERE risk = $risk";
}

$risks = [];
$sql = "SELECT * FROM incidents".$condition;

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']      = $row['id'];
    $risks[$cr]['risk'] = $row['risk'];
    $risks[$cr]['cat'] = $row['cat'];
    $risks[$cr]['company'] = floatval($row['company']);
    $risks[$cr]['date'] = $row['date'];
    $risks[$cr]['type'] = floatval($row['type']);
    $risks[$cr]['incident_desc'] = $row['incident_desc'];
    $risks[$cr]['failed_controls'] = $row['failed_controls'];
    $cr++;
  }
    
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>