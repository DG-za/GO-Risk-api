<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');
require 'connect.php';
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$company = [];
$cat = [];
$company = mysqli_real_escape_string($con, (int)$request->data->company);
$cat = mysqli_real_escape_string($con, (int)$request->data->cat);
$risks = [];
$sql = "SELECT id, risk_desc FROM risk WHERE company ='$company' AND type='$cat'";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']      = $row['id'];
    $risks[$cr]['risk_desc'] = $row['risk_desc'];
    $cr++;
  } 
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>