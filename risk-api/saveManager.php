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
  $firstname = mysqli_real_escape_string($con, $request->data->firstname);
  $lastname = mysqli_real_escape_string($con, $request->data->lastname);   
  $cell = mysqli_real_escape_string($con, $request->data->cell);    
  $email = mysqli_real_escape_string($con, $request->data->email);    
  $company = mysqli_real_escape_string($con, (int)$request->data->company);    
  $role = mysqli_real_escape_string($con, (int)$request->data->role);     

  // Store.
  $sql = "INSERT INTO users (firstname, lastname, cell, email, company, role) VALUES ('$firstname', '$lastname', '$cell', '$email', '$company', '$role')";

  if(mysqli_query($con,$sql))
  {
    http_response_code(201);
    $manager = [
      'firstname' => $firstname,
      'lastname' => $lastname,
      'cell' => $cell,
      'email' => $email,
      'company' => $company,
      'role' => $role,
      'id'    => mysqli_insert_id($con)
    ];
    echo json_encode(['data'=>$manager]);
  }
  else
  {
    http_response_code(422);
  }
}
