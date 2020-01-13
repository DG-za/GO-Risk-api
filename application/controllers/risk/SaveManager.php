<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveManager extends REST_Controller {
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
    $this->load->model('risk/SaveManager_model');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    
    $message = 'Required field(s) user_id,company,hazard,risk is missing or empty';
    $user_id = $this->post('user_id');
    $firstname = $this->post('firstname');
    $lastname = $this->post('lastname');
    $cell = $this->post('cell');
    $email = $this->post('email');
    $company = $this->post('company');
    $role = $this->post('role');

    if(isset($user_id) && !empty($user_id) && isset($firstname) && !empty($firstname) && isset($lastname) && !empty($lastname) && isset($cell) && !empty($cell) && isset($email) && !empty($email) && isset($company) && !empty($company) && isset($role) && !empty($role)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
        $saveArr = array();
        $saveArr[] = array(
            'firstname' => $firstname,
            'lastname' => $lastname,
            'cell' => $cell,
            'email' => $email,
            'company' => $company,
            'role' => $role
          );
        $results = $this->SaveManager_model->save_Manager($saveArr);
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