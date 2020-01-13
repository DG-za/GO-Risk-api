<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveEmailTemplate extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 27-09-2019
	*  Description : A controller contain SaveElement related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('SaveEmailTemplate_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,heading,subject,type,header,body,footer is missing or empty';
		$user_id = $this->post('user_id');
		$heading = $this->post('heading');
		$subject = $this->post('subject');
		$type = $this->post('type');
		$header = $this->post('header');
		$body = $this->post('body');
		$footer = $this->post('footer');
		if(isset($user_id) && isset($heading) && isset($subject) && isset($type) && isset($header) && isset($body) && isset($footer)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Pass_Data = array();
				$Insert_Array = array(
					"`heading`" => $heading,
					"`subject`" => $subject,
					"`type`" => $type,
					"`header`" => $header,
					"`body`" => $body,
					"`footer`" => $footer,
					"`active`" => "no",
					"`created_date`" => date("Y-m-d h:i:s"),
					"`modified_date`" => date("Y-m-d h:i:s")
				);
				$Insert_EmailTemplate_Result = $this->SaveEmailTemplate_model->Insert_EmailTemplate($Insert_Array);
				if($Insert_EmailTemplate_Result > 0){
					$data = [
						'id'    => $Insert_EmailTemplate_Result,
					];
					$Pass_Data["data"][] = $data;
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				}else{
					$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"Save Element not Inserted"];
					$this->set_response($not_inserted, REST_Controller::HTTP_OK);
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