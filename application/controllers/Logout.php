<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class Logout extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 23-09-2019
	*  Description : A controller contain GetPerformanceElements related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();			
		$this->load->model('Logout_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		if(isset($user_id)){
			$Logout_Result = $this->Logout_modal->Delete_Tokens($user_id);
			if($Logout_Result){
				$inserted = ['status' => "true","statuscode" => 200,'response' =>"Logout Successfully"];
				$this->set_response($inserted, REST_Controller::HTTP_OK);
			}else{
				$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"Logout not Successfully"];
				$this->set_response($not_inserted, REST_Controller::HTTP_OK);
			}
		}else{
			$parameter_required_array = ['status' => "true","statuscode" => 404,'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}
}