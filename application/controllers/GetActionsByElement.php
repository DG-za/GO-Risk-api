<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetActionsByElement extends REST_Controller {
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
		$this->load->model('GetActionsByElement_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,element_id is missing or empty';
		$user_id = $this->post('user_id');
		$Element_ID = $this->post('element_id');
		if(isset($user_id) && isset($Element_ID)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$merge_Array = array();
				$results = $this->GetActionsByElement_modal->get_Action_Results($Element_ID);
				if(!empty($results)){
					$merge_Array["results"] = $results[0]->results;
				}
				$definition = $this->GetActionsByElement_modal->get_Action_Definition($Element_ID);
				if(!empty($definition)){
					$merge_Array["definition"] = $definition[0]->definition;
				}
				$measure = $this->GetActionsByElement_modal->get_Action_Measure($Element_ID);
				if(!empty($measure)){
					$merge_Array["measure"] = $measure[0]->measure;
				}
				$risk = $this->GetActionsByElement_modal->get_Action_Risk($Element_ID);
				if(!empty($risk)){
					$merge_Array["risk"] = $risk[0]->risk;
				}
				$Pass_Data["data"] = $merge_Array;
				$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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