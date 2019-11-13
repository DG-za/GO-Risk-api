<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');

require 'connect.php';

// Get the posted data.
$postdata = file_get_contents("php://input");

if(isset($postdata) && !empty($postdata))
 {
  // Extract the data.
  $request = json_decode($postdata);
	

  // Validate.
  // if(trim($request->data->cat) < 0 || (int)$request->data->score < 1)
  // {
  //   return http_response_code(400);
  // }
	
  // Sanitize.
  $risk = mysqli_real_escape_string($con, $request->data->risk);
  $cat = mysqli_real_escape_string($con, $request->data->cat);
  $company = mysqli_real_escape_string($con, $request->data->company);   
  $type = mysqli_real_escape_string($con, $request->data->type);    
  $desc = mysqli_real_escape_string($con, $request->data->desc);    
  $controls = mysqli_real_escape_string($con, $request->data->controls);    

  // Store.
  $sql = "INSERT INTO incidents (risk,cat, company, date, type, incident_desc, failed_controls) VALUES ('$risk','$cat', '$company', now(), '$type', '$desc', '$controls')";

  if(mysqli_query($con,$sql))
  {
    http_response_code(201);
    $incident = [
      'id'    => mysqli_insert_id($con),
    ];
    echo json_encode(['data'=>$incident]);
  }
  else
  {
    http_response_code(422);
  }
}
