<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');
require 'connect.php';
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$company = mysqli_real_escape_string($con, (int)$request->data->company);
$risk = mysqli_real_escape_string($con, (int)$request->data->risk);
$condition = '';
if($company!=0){
  $condition = " WHERE risk = $risk AND company = $company";
}

$risks = [];
$sql = "SELECT * FROM control_check". $condition;

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']      = $row['id'];
    $risks[$cr]['user']      = $row['user'];
    $risks[$cr]['hazard'] = $row['hazard'];
    $risks[$cr]['control'] = $row['control'];
    $risks[$cr]['company'] = $row['company'];
    if($row['checked']==0){
      $checked = false;
    }
    if($row['checked']==1){
      $checked = true;
    }
    $risks[$cr]['checked'] = $checked;
    $risks[$cr]['date'] = $row['date'];
    $cr++;
  }
    
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}

?>