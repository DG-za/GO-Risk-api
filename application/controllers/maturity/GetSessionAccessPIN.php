<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetSessionAccessPIN extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 23-09-2019
	*  Description : A controller contain GetCategories related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/GetSessionAccessPIN_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "false","statuscode" => 404,'response' =>"No Record Found"];
		$invalid = ['status' => "false","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "false","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,accessPIN is missing or empty';
		$user_id = $this->post('user_id');
		$accessPIN = $this->post('accessPIN');
		if(isset($user_id) && isset($accessPIN)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$resultAccessPIN = $this->GetSessionAccessPIN_model->GetAccessPIN($accessPIN);
				$Pass_Data = array();
				if(!empty($resultAccessPIN)){
					/*$Pass_Data[] = $resultAccessPIN;*/
						$valid = ['status' => "true","statuscode" => 200,'response' =>$resultAccessPIN];
						/*$Pass_Data["data"][] = $resultAccessPIN;*/
					$this->set_response($valid, REST_Controller::HTTP_OK);
				}else{
					$this->set_response($no_found, REST_Controller::HTTP_OK);
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