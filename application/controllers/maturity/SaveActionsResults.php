<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveActionsResults extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 27-09-2019
	*  Description : A controller contain SaveActionsResults related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/SaveActionsResults_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,element,results is missing or empty';
		$user_id = $this->post('user_id');
		$element = $this->post('element');
		$results = $this->post('results'); 
		$victory = $this->post('victoryId'); 
		if(isset($user_id) && isset($element) && isset($results)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Replace_Action_Result_Array = array(
					"`element`" => $element,
					"`results`" => $results,
					"`victory`" => $victory
				);
				$SaveActionsResult_Result = $this->SaveActionsResults_model->Replace_Action_Result($Replace_Action_Result_Array);
				if($SaveActionsResult_Result){
					echo "Success";
				}else{
					$Not_Replaced = ['status' => "true","statuscode" => 200,'response' =>"Action Result Not Replaced."];
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