<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class Get5BiggestGapsPractice extends REST_Controller {
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
		$this->load->model('Get5BiggestGapsPractice_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($this->post('user_id'),$headers['Authorization']);
			
			if($token_status == TRUE){
				$Pass_Data = array();
				$merge_array = array();
				$AllElements = $this->Get5BiggestGapsPractice_modal->GetAllElements_Function();
				foreach ($AllElements as $key => $value) {
					$elementId=$value->id;
					$elementName=$value->name;
					$allPracticeAnswersByElement = $this->Get5BiggestGapsPractice_modal->getAllPracticeAnswersByElement_function($elementId);
					if(!empty($allPracticeAnswersByElement)){
						if($allPracticeAnswersByElement[0]->count != 0){
							$allPracticeAnswersAverage=number_format((float)$allPracticeAnswersByElement[0]->sum/$allPracticeAnswersByElement[0]->count,1,'.','');
						}else{
							$allPracticeAnswersAverage=0.0;
						}
					}else{
						$allPracticeAnswersAverage=0.0;
					}
					$allPracticeDesiredByElement = $this->Get5BiggestGapsPractice_modal->getAllPracticeDesiredByElement_function($elementId);
					if(!empty($allPracticeDesiredByElement)){
						if($allPracticeDesiredByElement[0]->count != 0){
							$allPracticeDesiredAverage=number_format((float)$allPracticeDesiredByElement[0]->sum/$allPracticeDesiredByElement[0]->count,1,'.','');
						}else{
							$allPracticeDesiredAverage=0.0;
						}
					}else{
						$allPracticeDesiredAverage=0.0;
					}
					$allPracticeDifference=number_format((float)$allPracticeDesiredAverage-$allPracticeAnswersAverage,1,'.','');
					$Pass_Data = array();
					$merge_array[] = array("name" => $elementName,"practice_answer_average" => $allPracticeAnswersAverage,"practice_desired_average"=>$allPracticeDesiredAverage,"practice_difference" =>$allPracticeDifference);
				}
				function method1($a,$b) 
			  {
			    return ($a["practice_difference"] >= $b["practice_difference"]) ? -1 : 1;
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