<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$companies = [];
// Get the posted data.
$postdata = file_get_contents("php://input");

//echo json_encode($postdata);
 if(isset($postdata) && !empty($postdata))
 {
  $request = json_decode($postdata);
  // Sanitize.
  $id = mysqli_real_escape_string($con, $request->data->id); 
  $sql = "SELECT id, name, total_workforce FROM company where id='".$id."'";

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
  }


?>