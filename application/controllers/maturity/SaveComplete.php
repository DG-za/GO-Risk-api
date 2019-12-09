<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveComplete extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 27-09-2019
	*  Description : A controller contain SaveComplete related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/SaveComplete_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,user,element is missing or empty';
		$user_id = $this->post('user');
		$user = $this->post('user');  
		$element = $this->post('element');
		if(isset($user_id)  && isset($element)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				 $Insert_SaveComplete_Array = array(
						"`user`" => $user, 
						"`element`" => $element
				 );
				 $Insert_Complete_Result = $this->SaveComplete_model->Insert_Complete($Insert_SaveComplete_Array);
				 if($Insert_Complete_Result){
						$data = [
							'status' => "success"
						];
						$Pass_Data["data"] = $data;
						$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				 }else{
						$Not_Inserted = ['status' => "true","statuscode" => 200,'response' =>"Save Complete Not Inserted."];
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