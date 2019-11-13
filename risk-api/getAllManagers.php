<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$managers = [];
$sql = "SELECT id, firstname, lastname FROM users";

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