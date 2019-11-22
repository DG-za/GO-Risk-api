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

  $parent_company_id = mysqli_real_escape_string($con, $request->data->parent_company_id);
  $workforce_count = mysqli_real_escape_string($con, $request->data->workforce_count);
  $team_performing_risk = mysqli_real_escape_string($con, $request->data->team_performing_risk);
  $date_risk_assessment = mysqli_real_escape_string($con, $request->data->date_risk_assessment);
  $risk_ownership = mysqli_real_escape_string($con, $request->data->risk_ownership);
  $inherent_risk_desc = mysqli_real_escape_string($con, $request->data->inherent_risk_desc);
  $community_ecological_exposure = mysqli_real_escape_string($con, $request->data->community_ecological_exposure);
  $product_exposure = mysqli_real_escape_string($con, $request->data->product_exposure);
  $customer_exposure = mysqli_real_escape_string($con, $request->data->customer_exposure);
  $fleet_exposure_frequency = mysqli_real_escape_string($con, $request->data->fleet_exposure_frequency);
  $inherent_route_risk = mysqli_real_escape_string($con, $request->data->inherent_route_risk);
  $political_risk = mysqli_real_escape_string($con, $request->data->political_risk);
  $economic_risk = mysqli_real_escape_string($con, $request->data->economic_risk);
  $social_risk = mysqli_real_escape_string($con, $request->data->social_risk);
  $asset_exposure = mysqli_real_escape_string($con, $request->data->asset_exposure);
  $external_security_risk = mysqli_real_escape_string($con, $request->data->external_security_risk);
  $traffic_volumes = mysqli_real_escape_string($con, $request->data->traffic_volumes);
  $road_conditions = mysqli_real_escape_string($con, $request->data->road_conditions);
  $area_security = mysqli_real_escape_string($con, $request->data->area_security);
  $management_discretion_consequence = mysqli_real_escape_string($con, $request->data->management_discretion_consequence);
  $management_discretion_desc = mysqli_real_escape_string($con, $request->data->management_discretion_desc);
  $management_discretion_frequency = mysqli_real_escape_string($con, $request->data->management_discretion_frequency);
  //$risk_inherent = mysqli_real_escape_string($con, $request->data->risk_inherent);
  //$risk_residual = mysqli_real_escape_string($con, $request->data->risk_residual);     

  // Store.
  //$sql = "INSERT INTO risk (company, geo_area, process_step, external_factor, hazard_desc, owner, cat, risk_desc, type, conseq, exposure_count, exposure_freq, exposure_duration, controls_prevent, controls_corrective, historic_conseq, historic_desc, historic_freq, risk_inherent, risk_residual) VALUES ('$company', '$geo_area', '$process_step', '$external_factor', '$hazard_desc', '$owner', '$cat', '$risk_desc', '$type', '$conseq', '$exposure_count', '$exposure_freq', '$exposure_duration', '$controls_prevent', '$controls_corrective', '$historic_conseq', '$historic_desc', '$historic_freq', '$risk_inherent', '$risk_residual')";
  $sql = "INSERT INTO risk (company, parent_company_id, workforce_count, geo_area, process_step, external_factor, hazard_desc, owner, cat, risk_desc, type, conseq, exposure_count, exposure_freq, exposure_duration, controls_prevent, controls_corrective, historic_conseq, historic_desc, historic_freq, team_performing_risk, date_risk_assessment, risk_ownership, inherent_risk_desc, community_ecological_exposure, product_exposure, customer_exposure, fleet_exposure_frequency, inherent_route_risk, political_risk, economic_risk, social_risk, asset_exposure, external_security_risk, traffic_volumes, road_conditions, area_security, management_discretion_consequence, management_discretion_desc, management_discretion_frequency) VALUES ('$company', '$parent_company_id', '$workforce_count', '$geo_area', '$process_step', '$external_factor', '$hazard_desc', '$owner', '$cat', '$risk_desc', '$type', '$conseq', '$exposure_count', '$exposure_freq', '$exposure_duration', '$controls_prevent', '$controls_corrective', '$historic_conseq', '$historic_desc', '$historic_freq', '$team_performing_risk', '$date_risk_assessment', '$risk_ownership', '$inherent_risk_desc', '$community_ecological_exposure', '$product_exposure', '$customer_exposure', '$fleet_exposure_frequency', '$inherent_route_risk', '$political_risk', '$economic_risk', '$social_risk', '$asset_exposure', '$external_security_risk', '$traffic_volumes', '$road_conditions', '$area_security', '$management_discretion_consequence', '$management_discretion_desc', '$management_discretion_frequency')";

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
