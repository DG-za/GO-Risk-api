<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$companies = [];
$sql = "SELECT id, name, total_workforce FROM company order by name";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $companies[$cr]['id']    = $row['id'];
    $companies[$cr]['name'] = $row['name'];
    $companies[$cr]['employees'] = $row['total_workforce'];
    $cr++;
  }
    
  echo json_encode(['data'=>$companies]);
}
else
{
  http_response_code(404);
}

?>