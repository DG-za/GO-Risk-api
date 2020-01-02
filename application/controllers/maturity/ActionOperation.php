<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class ActionOperation extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 09-10-2019
	*  Description : A controller contain Action Operation related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/ActionOperation_model');
	}
	
	public function index_post(){
		echo "call";
	}
	public function getAllActionvictory_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');

		$victory_id=$this->post('victory_id');
		$selectedSessionId=$this->post('selectedSessionId');
		
		if(isset($user_id) ){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Insert_saveQuestion_Result = $this->ActionOperation_model->getAllActionvictory($selectedSessionId);
				if($Insert_saveQuestion_Result > 0){
					$Pass_Data["data"][] = $Insert_saveQuestion_Result;
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
  public function getOneActionvictory_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,victory_id is missing or empty';
		$user_id = $this->post('user_id');

		$victory_id=$this->post('victory_id');
		
		if(isset($user_id) && isset($victory_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Insert_saveQuestion_Result = $this->ActionOperation_model->getOneActionvictory($victory_id);
				if($Insert_saveQuestion_Result > 0){
					$Pass_Data["data"] = $Insert_saveQuestion_Result;
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
  public function insertActionCall_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,element,definition,teammembers,performance_elements, is missing or empty,focusareaname,focusareaowner,risk,results,measure';
		$user_id = $this->post('user_id');
		$milestones_data = $this->post('milestones');
		$update_id = $this->post('id');
		$selectedSessionId = $this->post('selectedSessionId');
		
		$victory_data = array(
			'element'=>$element = $this->post('element'),
			'definition'=>$definition = $this->post('definition'),
			'session_id'=>$selectedSessionId = $this->post('selectedSessionId'),
			'outcome_id' =>$outcome_id = $this->post('outcome_id'),
			'teammembers'=>$teammembers = $this->post('teammembers'),
			'performance_elements'=>$performance_elements = $this->post('performance_elements'),
			'focusareaname'=>$focusareaname = $this->post('focusareaname'),
			'focusareaowner'=>$focusareaowner = $this->post('focusareaowner'));
		$risk_data = array(
			'element'=>$element = $this->post('element'),
			'risk'=>$risk = $this->post('risk')
		);
		$results_data = array(
			'element'=>$element = $this->post('element'),
			'results'=>$results = $this->post('results')
		);
		$measure_data = array(
			'element'=>$element = $this->post('element'),
			'measure'=>$measure = $this->post('measure')
		);
		if(isset($user_id) && isset($element) && isset($definition) && isset($measure) && isset($results) && isset($milestones_data) && isset($risk) && isset($teammembers) && isset($performance_elements) && isset($focusareaname) && isset($focusareaowner) ){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Insert_saveQuestion_Result = $this->ActionOperation_model->insertActionCall($update_id,$victory_data,$risk_data,$results_data,$measure_data,$milestones_data);
				if($Insert_saveQuestion_Result > 0){
					$Pass_Data["data"][] = $Insert_saveQuestion_Result;
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
  public function getUserName_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,victory_id is missing or empty';
		$user_id = $this->post('user_id');

		$id = $this->post('id');

		if(isset($user_id) && isset($id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Insert_saveQuestion_Result = $this->ActionOperation_model->getUserName($id);
				if(!empty($Insert_saveQuestion_Result)){
					$Pass_Data["data"][] = $Insert_saveQuestion_Result;
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
  public function performance_elements_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,id is missing or empty';
		$user_id = $this->post('user_id');

		$id = $this->post('id');
		
		if(isset($user_id) && isset($id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Insert_saveQuestion_Result = $this->ActionOperation_model->performance_elements($id);
				if(!empty($Insert_saveQuestion_Result)){
					$Pass_Data["data"][] = $Insert_saveQuestion_Result;
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
  public function elements_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,id is missing or empty';
		$user_id = $this->post('user_id');

		$id = $this->post('id');
		
		if(isset($user_id) && isset($id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Insert_saveQuestion_Result = $this->auth_model->elements($id);
				if(!empty($Insert_saveQuestion_Result)){
					$Pass_Data["data"][] = $Insert_saveQuestion_Result;
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