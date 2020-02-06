<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class Get5BiggestGapsPerformance extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 26-09-2019
	*  Description : A controller contain GetTop5Elements related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/Get5BiggestGapsPerformance_model');
	}

	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$selectedSessionId = $this->post('selectedSessionId');
		$toUserId = $this->post('to_user_id');

		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($this->post('user_id'),$headers['Authorization']);
			
			if($token_status == TRUE){
				$Pass_Data = array();
				$merge_array = array();
				$AllElements = $this->Get5BiggestGapsPerformance_model->GetAllElements_Function();
				foreach ($AllElements as $key => $value) {
					$elementId=$value->id;
					$elementName=$value->name;
					if(isset($toUserId) && $toUserId != 'all'){
						$allPerformanceAnswersByArea = $this->Get5BiggestGapsPerformance_model->getAllPerformanceAnswersByArea_function_User($elementId,$selectedSessionId,$toUserId);
					}else{
						$allPerformanceAnswersByArea = $this->Get5BiggestGapsPerformance_model->getAllPerformanceAnswersByArea_function($elementId,$selectedSessionId);
					}
										
					if(!empty($allPerformanceAnswersByArea)){
						if($allPerformanceAnswersByArea[0]->count != 0){
							$allPerformanceAnswersAverage=number_format((float)$allPerformanceAnswersByArea[0]->sum/$allPerformanceAnswersByArea[0]->count,1,'.','');
						}else{
							$allPerformanceAnswersAverage=0.0;
						}
					}else{
						$allPerformanceAnswersAverage=0.0;
					}
					if(isset($toUserId) && $toUserId != 'all'){
						$allPerformanceDesiredByArea = $this->Get5BiggestGapsPerformance_model->getAllPerformanceDesiredByArea_function_User($elementId,$selectedSessionId,$toUserId);
					}else{
						$allPerformanceDesiredByArea = $this->Get5BiggestGapsPerformance_model->getAllPerformanceDesiredByArea_function($elementId,$selectedSessionId);
					}
					
					if(!empty($allPerformanceDesiredByArea)){
						if($allPerformanceDesiredByArea[0]->count != 0){
							$allPerformanceDesiredAverage=number_format((float)$allPerformanceDesiredByArea[0]->sum/$allPerformanceDesiredByArea[0]->count,1,'.','');
						}else{
							$allPerformanceDesiredAverage=0.0;
						}
					}else{
						$allPerformanceDesiredAverage=0.0;
					}
					$allPracticeDifference=number_format((float)$allPerformanceDesiredAverage-$allPerformanceAnswersAverage,1,'.','');
					$Pass_Data = array();
					$merge_array[] = array("name" => $elementName,"performance_answer_average" => $allPerformanceAnswersAverage,"performance_desired_average"=>$allPerformanceDesiredAverage,"performance_difference" =>$allPracticeDifference);
				}
				function method1($a,$b) 
			  {
			    return ($a["performance_difference"] >= $b["performance_difference"]) ? -1 : 1;
			  }
			  usort($merge_array, "method1");
				$Pass_Data["data"] = $merge_array;
				$valid = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
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