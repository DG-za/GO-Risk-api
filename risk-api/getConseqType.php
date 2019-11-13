<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$risk_conseq = [];
$sql = "SELECT id, name FROM conseq_type";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risk_conseq[$cr]['id']    = $row['id'];
    $risk_conseq[$cr]['name'] = $row['name'];
    $cr++;
  }
    
  echo json_encode(['data'=>$risk_conseq]);
}
else
{
  http_response_code(404);
}

?>