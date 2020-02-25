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
    $this->load->model('risk/SaveRisk_model');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    $saveArr = array();
    $message = 'Required field(s) user_id,company,hazard,risk is missing or empty';
    $user_id = $this->post('user_id');
    $riskId = $this->post('riskId');
    $saveArr[] = $this->post('saveRiskArr');
    if(isset($user_id) && !empty($user_id) && isset($saveArr) && !empty($saveArr)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
        if($riskId == 0 || $riskId == "0"){
          $results = $this->SaveRisk_model->save_Risk($saveArr);  
        }else{
          $results = $this->SaveRisk_model->update_Risk($saveArr[0],$riskId);  
        }
        
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