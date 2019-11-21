<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveManagerNotification extends REST_Controller {
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
    $this->load->model('risk/SaveManagerNotification_modal');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    
    $message = 'Required field(s) user_id,owner,manager,risk,type,date,comments,sms is missing or empty';
    $user_id = $this->post('user_id');
    $owner = $this->post('owner');
    $manager = $this->post('manager');
    $risk = $this->post('risk');
    $type = $this->post('type');
    $date = date("Y-m-d",strtotime($this->post('date')));
    $comments = $this->post('comments');
    $sms = $this->post('sms');

    if(isset($user_id) && !empty($user_id) && isset($owner) && !empty($owner) && isset($manager) && !empty($manager) && isset($risk) && !empty($risk) && isset($type) && !empty($type) && isset($date) && !empty($date) && isset($comments) && !empty($comments) && isset($sms) && !empty($sms)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
        $saveArr = array();
        $saveArr[] = array(
            'owner' => $owner,
            'manager' => $manager,
            'risk' => $risk,
            'type' => $type,
            'date' => $date,
            'comments' => $comments,
            'sms' => $sms,
            'complete' => '0',
            'complete_date' => ''
          );
        $results = $this->SaveManagerNotification_modal->save_Manager_Notification($saveArr);
        if(!empty($results)){
           $notification = array(
           'owner' => $owner,
          'manager' => $manager,
          'risk' => $risk,
          'type' => $type,
          'date' => $date,
          'comments' => $comments,
          'sms' => $sms,
          'id'    =>$results
        );
          
          $Inserted = ['status' => "true","statuscode" => 200,'response' =>$notification];
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



