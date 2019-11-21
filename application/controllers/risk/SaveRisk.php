<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveRisk extends REST_Controller {
  /***************************************************************
  *  Project Name : 4Xcellence Solutions
  *  Created By :   
  *  Created Date : 25-09-2019
  *  Description : A controller contain GetActionsByElement related methods
  *  Modification History :
  *  
  ***************************************************************/
  
  public function __construct() {
    parent::__construct();
    $this->load->helper('check_token');       
    $this->load->model('risk/SaveRisk_modal');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    $saveArr = array();
    $message = 'Required field(s) user_id,company,hazard,risk is missing or empty';
    $user_id = $this->post('user_id');
    $saveArr[] = $this->post('saveRiskArr');
    /*$company = $this->post('company');
    $geo_area = $this->post('geo_area');
    $process_step = $this->post('process_step');
    $external_factor = $this->post('external_factor');
    $hazard_desc = $this->post('hazard_desc');
    $owner = $this->post('owner');
    $cat = $this->post('cat');
    $risk_desc = $this->post('risk_desc');
    $type = $this->post('type');
    $conseq = $this->post('conseq');
    $exposure_count = $this->post('exposure_count');
    $exposure_freq = $this->post('exposure_freq');
    $exposure_duration = $this->post('exposure_duration');
    $controls_prevent = $this->post('controls_prevent');
    $controls_corrective = $this->post('controls_corrective');
    $historic_conseq = $this->post('historic_conseq');
    $historic_desc = $this->post('historic_desc');
    $historic_freq = $this->post('historic_freq');

    $parent_company_id = $this->post('parent_company_id');
    $workforce_count = $this->post('workforce_count');
    $team_performing_risk = $this->post('team_performing_risk');
    $date_risk_assessment = $this->post('date_risk_assessment');
    $risk_ownership = $this->post('risk_ownership');
    $inherent_risk_desc = $this->post('inherent_risk_desc');
    $community_ecological_exposure = $this->post('community_ecological_exposure');
    $product_exposure = $this->post('product_exposure');
    $customer_exposure = $this->post('customer_exposure');
    $fleet_exposure_frequency = $this->post('fleet_exposure_frequency');
    $inherent_route_risk = $this->post('inherent_route_risk');
    $political_risk = $this->post('political_risk');
    $economic_risk = $this->post('economic_risk');
    $social_risk = $this->post('social_risk');
    $asset_exposure = $this->post('asset_exposure');
    $external_security_risk = $this->post('external_security_risk');
    $traffic_volumes = $this->post('traffic_volumes');
    $road_conditions = $this->post('road_conditions');
    $area_security = $this->post('area_security');
    $management_discretion_consequence = $this->post('management_discretion_consequence');
    $management_discretion_desc = $this->post('management_discretion_desc');
    $management_discretion_frequency = $this->post('management_discretion_frequency');*/


    if(isset($user_id) && !empty($user_id) && isset($saveArr) && !empty($saveArr)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
        /*$saveArr[] = array(
            'company' => $company,
            'geo_area' => $geo_area,
            'process_step' => $process_step,
            'external_factor' => $external_factor,
            'hazard_desc' => $hazard_desc,
            'owner' => $owner,
            'cat' => $cat,
            'risk_desc' => $risk_desc,
            'type' => $type,
            'conseq' => $conseq,
            'exposure_count' => $exposure_count,
            'exposure_freq' => $exposure_freq,
            'exposure_duration' => $exposure_duration,
            'controls_prevent' => $controls_prevent,
            'controls_corrective' => $controls_corrective,
            'historic_conseq' => $historic_conseq,
            'historic_desc' => $historic_desc,
            'historic_freq' => $historic_freq,
            'parent_company_id' => $parent_company_id,
            'workforce_count' => $workforce_count,
            'team_performing_risk' => $team_performing_risk,
            'date_risk_assessment' => $date_risk_assessment,
            'risk_ownership' => $risk_ownership,
            'inherent_risk_desc' => $inherent_risk_desc,
            'community_ecological_exposure' => $community_ecological_exposure,
            'product_exposure' => $product_exposure,
            'customer_exposure' => $customer_exposure,
            'fleet_exposure_frequency' => $fleet_exposure_frequency,
            'inherent_route_risk' => $inherent_route_risk,
            'political_risk' => $political_risk,
            'economic_risk' => $economic_risk,
            'social_risk' => $social_risk,
            'asset_exposure' => $asset_exposure,
            'external_security_risk' => $external_security_risk,
            'traffic_volumes' => $traffic_volumes,
            'road_conditions' => $road_conditions,
            'area_security' => $area_security,
            'management_discretion_consequence' => $management_discretion_consequence,
            'management_discretion_desc' => $management_discretion_desc,
            'management_discretion_frequency' => $management_discretion_frequency
          );*/
        $results = $this->SaveRisk_modal->save_Risk($saveArr);
        if(!empty($results)){
          $Pass_Data["data"]['insertId'] = $results;
          $Inserted = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
          $this->set_response($Inserted, REST_Controller::HTTP_OK);
        }else{
          $Not_Inserted = ['status' => "true","statuscode" => 200,'response' =>"Record Not Inserted."];
          $this->set_response($Not_Inserted, REST_Controller::HTTP_OK);
        }
      }else if($token_status == FALSE){
        $this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
      }else{
        $this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
      }
    }else{
      $parameter_required_array = ['status' => "true","statuscode" => 404,'response' => $message];
      $this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
    }
  }
}
?>