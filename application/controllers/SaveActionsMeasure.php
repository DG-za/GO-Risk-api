<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveActionsMeasure extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 27-09-2019
	*  Description : A controller contain SaveActionsMeasure related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('SaveActionsMeasure_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,element,measure is missing or empty';
		$user_id = $this->post('user_id');
		$element = $this->post('element');
		$measure = $this->post('measure');
		if(isset($user_id) && isset($element) && isset($measure)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){ 
				 $Replace_Measure_Array = array(
						"`element`" => $element,
						"`measure`" => $measure 
				 );
				 $SaveActionsMeasure_Result = $this->SaveActionsMeasure_modal->Replace_Action_Measure($Replace_Measure_Array);
				 if($SaveActionsMeasure_Result){
						$Replaced = ['status' => "true","statuscode" => 200,'response' =>"Action Measure Replaced Successfully."];
						$this->set_response($Replaced, REST_Controller::HTTP_OK);
				 }else{
						$Not_Replaced = ['status' => "true","statuscode" => 200,'response' =>"Action Measure Not Replaced."];
						$this->set_response($Not_Replaced, REST_Controller::HTTP_OK);
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