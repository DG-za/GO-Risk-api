<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class DeleteAnswers extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 18-10-2019
	*  Description : A controller contain DeleteAnswers related methods, When user 
	   delete questsion at the same time all answers will be deleted related to that
	   questions.
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/DeleteAnswers_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Deleted"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,question_id is missing or empty';
		$user_id = $this->post('user_id');
		$Question_ID = $this->post('id');
		if(isset($user_id) && isset($Question_ID)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Answers_Delete_Result = $this->DeleteAnswers_model->deleteAnswers_function($Question_ID);
				if($Answers_Delete_Result){
					$deleted = ['status' => "true","statuscode" => 200,'response' =>"Answers Deleted Successfully"];
					$this->set_response($deleted, REST_Controller::HTTP_OK);
				}else{
					$not_deleted = ['status' => "true","statuscode" => 200,'response' =>"Answers not Deleted"];
					$this->set_response($not_deleted, REST_Controller::HTTP_OK);
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