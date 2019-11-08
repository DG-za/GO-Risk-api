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
	
  // Sanitize.
  $company = mysqli_real_escape_string($con, $request->data->company);
  $geo_area = mysqli_real_escape_string($con, $request->data->geo_area);    
  $process_step = mysqli_real_escape_string($con, $request->data->process_step);    
  $external_factor = mysqli_real_escape_string($con, $request->data->external_factor); 
  $hazard_desc = mysqli_real_escape_string($con, $request->data->hazard_desc);    
  $owner = mysqli_real_escape_string($con, $request->data->owner);   
  $cat = mysqli_real_escape_string($con, $request->data->cat);    
  $risk_desc = mysqli_real_escape_string($con, $request->data->risk_desc);     
  $type = mysqli_real_escape_string($con, $request->data->type);     
  $conseq = mysqli_real_escape_string($con, $request->data->conseq);     
  $exposure_count = mysqli_real_escape_string($con, $request->data->exposure_count);     
  $exposure_freq = mysqli_real_escape_string($con, $request->data->exposure_freq);     
  $exposure_duration = mysqli_real_escape_string($con, $request->data->exposure_duration);     
  $controls_prevent = mysqli_real_escape_string($con, $request->data->controls_prevent);     
  $controls_corrective = mysqli_real_escape_string($con, $request->data->controls_corrective);
  $historic_conseq = mysqli_real_escape_string($con, $request->data->historic_conseq);
  $historic_desc = mysqli_real_escape_string($con, $request->data->historic_desc);   
  $historic_freq = mysqli_real_escape_string($con, $request->data->historic_freq);
  //$risk_inherent = mysqli_real_escape_string($con, $request->data->risk_inherent);
  //$risk_residual = mysqli_real_escape_string($con, $request->data->risk_residual);     

  // Store.
  //$sql = "INSERT INTO risk (company, geo_area, process_step, external_factor, hazard_desc, owner, cat, risk_desc, type, conseq, exposure_count, exposure_freq, exposure_duration, controls_prevent, controls_corrective, historic_conseq, historic_desc, historic_freq, risk_inherent, risk_residual) VALUES ('$company', '$geo_area', '$process_step', '$external_factor', '$hazard_desc', '$owner', '$cat', '$risk_desc', '$type', '$conseq', '$exposure_count', '$exposure_freq', '$exposure_duration', '$controls_prevent', '$controls_corrective', '$historic_conseq', '$historic_desc', '$historic_freq', '$risk_inherent', '$risk_residual')";
  $sql = "INSERT INTO risk (company, geo_area, process_step, external_factor, hazard_desc, owner, cat, risk_desc, type, conseq, exposure_count, exposure_freq, exposure_duration, controls_prevent, controls_corrective, historic_conseq, historic_desc, historic_freq) VALUES ('$company', '$geo_area', '$process_step', '$external_factor', '$hazard_desc', '$owner', '$cat', '$risk_desc', '$type', '$conseq', '$exposure_count', '$exposure_freq', '$exposure_duration', '$controls_prevent', '$controls_corrective', '$historic_conseq', '$historic_desc', '$historic_freq')";

  if(mysqli_query($con,$sql))
  {
    http_response_code(201);
    $risk = [
      'saved' => 'Success',
    ];
    echo json_encode(['data'=>$risk]);
  }
  else
  {
    http_response_code(422);
  }
}
