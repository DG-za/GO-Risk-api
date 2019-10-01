<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveQuestion extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 28-09-2019
	*  Description : A controller contain SaveQuestion related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('SaveQuestion_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,element,question,reactive,compliant,proactive,resilient is missing or empty';
		$user_id = $this->post('user_id');
		$element = $this->post('element');
		$question = $this->post('question');
		$reactive = $this->post('reactive');
		$compliant = $this->post('compliant');
		$proactive = $this->post('proactive');
		$resilient = $this->post('resilient');
		if(isset($user_id) && isset($element) && isset($question) && isset($reactive) && isset($compliant) && isset($proactive) && isset($resilient)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				
				$Insert_Array = array(
					"`element`" => $element,
					"`question`" => $question,
					"`reactive`" => $reactive,
					"`compliant`" => $compliant,
					"`proactive`" => $proactive,
					"`resilient`" => $resilient,
				);
				$Insert_saveQuestion_Result = $this->SaveQuestion_modal->Insert_saveQuestion($Insert_Array);
				if($Insert_saveQuestion_Result > 0){
					$data = [
						"element" => $element,
						"question" => $question,
						"reactive" => $reactive,
						"compliant" => $compliant,
						"proactive" => $proactive,
						"resilient" => $resilient,
						"id" => $Insert_saveQuestion_Result
					];
					$Pass_Data["data"][] = $data;
					$inserted = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
					$this->set_response($inserted, REST_Controller::HTTP_OK);
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