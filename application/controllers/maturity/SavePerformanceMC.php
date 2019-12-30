<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SavePerformanceMC extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 28-09-2019
	*  Description : A controller contain SavePerformanceMC related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/SavePerformanceMC_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,user,element,question,answer is missing or empty';
		$user_id = $this->post('user');
		$element = $this->post('element');
		$question = $this->post('question');
		$answer = $this->post('answer');
		$selectedSessionId = $this->post('selectedSessionId');
		if($selectedSessionId == "null"){
			$selectedSessionId=null;
		}
		if(isset($user_id) && isset($element) && isset($question) && isset($answer)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Where_Array = array(
					"`question`" => $question,
					"`element`" => $element,
					"`session_id`" => $selectedSessionId,
					"`user`" => $user_id
				);
				$Get_Answer_if_Exist = $this->SavePerformanceMC_model->Get_Answer_if_Exist($Where_Array);
				if($Get_Answer_if_Exist > 0){
					$Update_Array = array(
						"`answer`" => $answer,
					);
					$Update_Performance_MC_Result = $this->SavePerformanceMC_model->Update_Performance_MC($Update_Array,$Where_Array);
					if($Update_Performance_MC_Result){
						$data = [
							'status' => "success"
						];
						$Pass_Data["data"] = $data;
						$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
					}else{
						$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"Performance MC not Inserted"];
						$this->set_response($not_inserted, REST_Controller::HTTP_OK);
					}
				}else{
					$Insert_Array = array(
						"`question`" => $question,
						"`element`" => $element,
						"`answer`" => $answer,
						"`user`" => $user_id,
						"`session_id`" => $selectedSessionId
					);
					$Insert_Performance_MC_Result = $this->SavePerformanceMC_model->Insert_Performance_MC($Insert_Array);
					if($Insert_Performance_MC_Result){
						$data = [
							'status' => "success"
						];
						$Pass_Data["data"] = $data;
						$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
					}else{
						$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"Performance MC not Inserted"];
						$this->set_response($not_inserted, REST_Controller::HTTP_OK);
					}
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