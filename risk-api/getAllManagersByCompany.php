<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';
$postdata = file_get_contents("php://input");
$managers = [];
$manager = mysqli_real_escape_string($con, (int)$request->data->company);
$sql = "SELECT id, firstname, lastname FROM users WHERE company ='$company'";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $managers[$cr]['id']    = $row['id'];
    $managers[$cr]['firstname'] = $row['firstname'];
    $managers[$cr]['lastname'] = $row['lastname'];
    $cr++;
  }
    
  echo json_encode(['data'=>$managers]);
}
else
{
  http_response_code(404);
}

?>