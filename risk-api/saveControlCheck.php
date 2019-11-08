<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');

require 'connect.php';

// Get the posted data.
$postdata = file_get_contents("php://input");

//echo json_encode($postdata);
 if(isset($postdata) && !empty($postdata))
 {
  // Extract the data.
  //$postdata = '{"data":{"user":1, "company":6 ,"hazard":1, "controls":[{"id":1, "checked":false},{"id":2, "checked":true},{"id":3, "checked":true}]}}';
  $request = json_decode($postdata);

  // Validate.
  // if(trim($request->data->cat) < 0 || (int)$request->data->score < 1)
  // {
  //   return http_response_code(400);
  // }
	
  // Sanitize.
  $user = mysqli_real_escape_string($con, $request->data->user); 
  $company = mysqli_real_escape_string($con, $request->data->company); 
  $hazard = mysqli_real_escape_string($con, $request->data->hazard); 
  $risk = mysqli_real_escape_string($con, $request->data->risk); 
  $control = $request->data->controls;
  $saveString = '';
  
  foreach($control as $myControl){
    $saveString = $saveString. "(".$user . ",".$risk.",".$hazard.",". $myControl->id.',' . (int)$myControl->checked. ','.$company . ",now()),";
  }
  $saveString =substr( $saveString, 0,  strlen($saveString)-1 );
  //echo( $saveString);
  // $desired = mysqli_real_escape_string($con, $request->data->desired);       
      

  // Store.
   $sql = "INSERT INTO control_check (user, risk, hazard, control, checked, company, date) VALUES $saveString";

   if(mysqli_query($con,$sql))
   {
     http_response_code(201);
     $data = [
       'status' => "success"
     ];
     echo json_encode(['data'=>$data]);
   }
   else
   {
     //echo mysqli_error($con);
     http_response_code(422);
   }
}
