<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$roles = [];
$sql = "SELECT id, name FROM user_roles";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $roles[$cr]['id']    = $row['id'];
    $roles[$cr]['name'] = $row['name'];
    $cr++;
  }
    
  echo json_encode(['data'=>$roles]);
}
else
{
  http_response_code(404);
}

?>