<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$risk_freq = [];
$sql = "SELECT id, frequency, level FROM event_historic_freq";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risk_freq[$cr]['id']    = $row['id'];
    $risk_freq[$cr]['name'] = $row['frequency'];
    $risk_freq[$cr]['level'] = $row['level'];
    $cr++;
  }
    
  echo json_encode(['data'=>$risk_freq]);
}
else
{
  http_response_code(404);
}

?>