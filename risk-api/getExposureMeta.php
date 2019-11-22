<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');
require 'connect.php';
$postdata = file_get_contents("php://input");

if(isset($postdata) && !empty($postdata))
 {
$request = json_decode($postdata);
$risk_conseq_type = mysqli_real_escape_string($con, (int)$request->data->risk_conseq_type);
$meta_data = [];

/*$sql = "SELECT * FROM risk_exposure_meta WHERE risk_conseq_type ='$risk_conseq_type' AND risk_exposure_type='$risk_exposure_type'";*/
$sql = "SELECT * FROM risk_exposure_meta WHERE risk_conseq_type ='$risk_conseq_type'";

if($result = mysqli_query($con,$sql))

{
  $cr = 0;
  $meta_keys = [];
  while($row = mysqli_fetch_assoc($result))
  {
    /*$meta_data[$cr]['meta_name'] = $row['meta_name'];
    $meta_data[$cr]['meta_key'] = $row['meta_key'];*/
    array_push($meta_keys, $row['meta_key']);
    $meta_data['meta_values'][$row['meta_key']] = json_decode($row['meta_value']);
    $cr++;
  } 
  $meta_data['meta_keys'] = $meta_keys;
  echo json_encode(['data'=>$meta_data]);
}
else
{
  http_response_code(404);
}
}

?>