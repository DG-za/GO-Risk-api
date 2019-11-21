<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetRiskDetail extends REST_Controller {
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
    $this->load->model('risk/GetRiskDetail_modal');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    
    $message = 'Required field(s) user_id is missing or empty';
    $user_id = $this->post('user_id');
    $riskid = $this->post('id');
    if(isset($user_id) && !empty($user_id) && isset($riskid) && !empty($riskid)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
        $risks = array();
        $incidents = array();
        $controls = array();
        $results = $this->GetRiskDetail_modal->get_Risk_Detail_Incidents($riskid);
        if(!empty($results)){
          foreach ($results as $key => $value) {
            $incidents[$key]["id"] = $value->id;
            $incidents[$key]["date"] = $value->date;
            $incidents[$key]["type"] = $value->type;
            $incidents[$key]["incident_desc"] = $value->incident_desc;
            $incidents[$key]["failed_controls"] = $value->failed_controls;
          }
        }
        $results1 = $this->GetRiskDetail_modal->get_Risk_Detail_Control_Check($riskid);
        if(!empty($results1)){
          foreach ($results1 as $key => $value) {
            $controls[$key]["id"] = $value->id;
            $controls[$key]["date"] = $value->date;
            $controls[$key]["hazard"] = $value->hazard;
            $controls[$key]["user"] = $value->user;
            $controls[$key]["control"] = $value->control;
          }
        }
        $results2 = $this->GetRiskDetail_modal->get_Risk_Detail($riskid);
        if(!empty($results2)){
          foreach ($results2 as $key => $value) {
            $risks[$key]["id"] = $value->id;
            $risks[$key]["company"] = $value->company;
            $risks[$key]["geo_area"] = $value->geo_area;
            $risks[$key]["process_step"] = $value->process_step;
            $risks[$key]["external_factor"] = $value->external_factor;
            $risks[$key]["hazard_desc"] = $value->hazard_desc;
            $risks[$key]["owner"] = $value->owner;
            $risks[$key]["cat"] = $value->cat;
            $risks[$key]["risk_desc"] = $value->risk_desc;
            $risks[$key]["type"] = $value->type;
            $risks[$key]["conseq"] = $value->conseq;
            $risks[$key]["exposure_count"] = $value->exposure_count;
            $risks[$key]["exposure_freq"] = $value->exposure_freq;
            $risks[$key]["exposure_duration"] = $value->exposure_duration;
            $risks[$key]["controls_prevent"] = $value->controls_prevent;
            $risks[$key]["controls_corrective"] = $value->controls_corrective;
            $risks[$key]["historic_conseq"] = $value->historic_conseq;
            $risks[$key]["historic_desc"] = $value->historic_desc;
            $risks[$key]["historic_freq"] = $value->historic_freq;
          }
        }
        $Pass_Data["data"] = $risks;
        $Pass_Data["incidents"] = $incidents;
        $Pass_Data["controls"] = $controls;
        $this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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