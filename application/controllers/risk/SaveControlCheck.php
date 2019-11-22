<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveControlCheck extends REST_Controller {
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
    $this->load->model('risk/SaveControlCheck_modal');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    
    $message = 'Required field(s) user_id,company,hazard,risk is missing or empty';
    $user_id = $this->post('user_id');
    $company = $this->post('company');
    $hazard = $this->post('hazard');
    $risk = $this->post('risk');
    $controls = $this->post('controls');
    $saveString = '';

    if(isset($user_id) && !empty($user_id) && isset($company) && !empty($company) && isset($hazard) && !empty($hazard) && isset($risk) && !empty($risk) && isset($controls) && !empty($controls)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
        $saveArr = array();

        foreach($controls as $myControl){
          $saveArr[] = array(
            'user' => $user_id,
            'risk' => $risk,
            'hazard' => $hazard,
            'control' => $myControl['id'],
            'checked' => (int)$myControl['checked'],
            'company' => $company,
            'date' => date("Y-m-d")
          );
        }
        $results = $this->SaveControlCheck_modal->save_Control_Check($saveArr);
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