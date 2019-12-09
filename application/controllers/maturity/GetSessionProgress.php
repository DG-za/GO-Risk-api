<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetSessionProgress extends REST_Controller {
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
		$this->load->helper('check_token');				
		$this->load->model('maturity/GetSessionProgress_model');
	}
	
	/*public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$performanceProgress = $this->GetSessionProgress_model->get_progress_of_performance($user_id);
				if(!empty($performanceProgress)){
					$performanceProgress = $performanceProgress;
				}else{
					$performanceProgress = 0;
				}

				$practiceProgress = $this->GetSessionProgress_model->get_progress_of_practice($user_id);

				if(!empty($practiceProgress)){
					$practiceProgress = $practiceProgress;
				}else{
					$practiceProgress = 0;
				}
				
				
				 $progressArr = array(
				 	'performanceProgress' => $performanceProgress, 
				 	'practiceProgress' => $practiceProgress
				 );
				$this->set_response($progressArr, REST_Controller::HTTP_OK);
				
			}else if($token_status == FALSE){
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			}else{
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		}else{
			$parameter_required_array = ['status' => "true","statuscode" => 404,'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}*/

/* Get users list base on user's role */

	public function getUsersByRole_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$role = $this->post('role');
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$getAllUsers_Result = $this->GetSessionProgress_model->getUsersByRole_function($role);
				$Pass_Data = array();
				if(!empty($getAllUsers_Result)){
					foreach($getAllUsers_Result as $key => $value){
						$merge_array = array(
							"id" => $value->id,
							"email" => $value->email,
							"firstname" => $value->firstname,
							"lastname" => $value->lastname,
							"role" => $value->role,
							"performanceProgress" => $this->GetSessionProgress_model->get_progress_of_performance($value->id),
							"practiceProgress" => $this->GetSessionProgress_model->get_progress_of_practice($value->id)
						);
						$Pass_Data["data"][] = $merge_array;
					}
					$valid = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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


/* Fetch answers of the performance questions */
public function get_answers_of_performance_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$logged_in_id = $this->post('logged_in_id');		
		$employee_id = $this->post('employee_id');
		$customAnswerarr = array(
			"1" => "poor",
			"2" => "mediocre",
			"3" => "good",
			"4" => "excellent"
		);
		//echo $customAnswerarr[1]; die;
		if(isset($logged_in_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($logged_in_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$elementsArr = $this->GetSessionProgress_model->get_performance_areas();				
				
				if(!empty($elementsArr)){	
				foreach($elementsArr as $key => $value){
					$data["element_name"] = $value->name;
					$data["element_id"] = $value->id;
					$data["series"] = array();
					$data['desired'] = array();
					$resultArr = $this->GetSessionProgress_model->get_answers_of_performance($employee_id,$value->id);
					//print_r($data); die;
					foreach($resultArr as $key_mc => $value_mc){
						 $tempArr = array(	
						 	"answer_id" => $value_mc->id,
						    "element_name" => $this->GetSessionProgress_model->get_performance_area_name($value_mc->element),
							"question_id" => $value_mc->question_id,	
							"question" => $value_mc->question,				
							"answer" => $this->GetSessionProgress_model->get_single_answer_of_performance($value_mc->question_id,$customAnswerarr[$value_mc->answer])
						);
						 $data["series"][] = $tempArr;
						 $data["desired"] = $this->GetSessionProgress_model->get_performance_desired_by_employee($value->id,$employee_id);
					}
					$jsonArr[] = $data;
					//print_r($data); die;
				}	


				/*foreach($resultArr as $key => $value){
						$data[] = array(	
							"element_name" => $this->GetSessionProgress_model->get_performance_area_name($value->element),
							"question_id" => $value->question_id,	
							"question" => $value->question,				
							"answer" => $this->GetSessionProgress_model->get_single_answer_of_performance($value->question_id,$customAnswerarr[$value->answer])
						);
						
					}*/
				
					$valid = ['status' => "true","statuscode" => 200,'response' =>$jsonArr];
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

/* Fetch answers of the questions */
public function getAnswersOfPractice_post(){
	$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
	$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
	$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
	$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
	
	$message = 'Required field(s) user_id is missing or empty';
	$logged_in_id = $this->post('logged_in_id');		
	$employee_id = $this->post('employee_id');
	$customAnswerarr = array(
		"1" => "reactive",
		"2" => "compliant",
		"3" => "proactive",
		"4" => "resilent"
	);
	
	if(isset($logged_in_id)){
		$headers = $this->input->request_headers();
		$token_status = check_token($logged_in_id,$headers['Authorization']);
		
		if($token_status == TRUE){
			$categoryArr = $this->GetSessionProgress_model->get_practice_categories(); 
			if(!empty($categoryArr)){	
			foreach($categoryArr as $key => $cat_val){					
				$data["category"] = $cat_val->name;
				$elementsArr = $this->GetSessionProgress_model->get_practice_elements($cat_val->id);
				$data['elements'] = array();
				$data['proofs'] = array();
				$data['desired'] = array();
				if($elementsArr){
			   foreach($elementsArr as $key => $ele_val){				
				 $tempArr1 = array ('element_name' => $ele_val->name,'element_id' => $ele_val->id);
				 $resultArr = $this->GetSessionProgress_model->get_answers_of_practice($employee_id,$ele_val->id);
				 if($resultArr){
				 foreach($resultArr as $key_mc => $value_mc){	
					$tempArr = array(	
					 	"answer_id" => $value_mc->id,
					    "element_name" => $this->GetSessionProgress_model->get_practice_element_name($value_mc->element),
						"question_id" => $value_mc->question_id,	
						"question" => $value_mc->question,				
						"answer" => $this->GetSessionProgress_model->get_single_answer_of_practice($value_mc->question_id,$customAnswerarr[$value_mc->answer])
					);
					 //$data["series"][] = $tempArr;	
					  $tempArr1["series"][] = $tempArr;					 
				}
				$data['elements'][] = $tempArr1;
				$data['proofs'] = $this->GetSessionProgress_model->get_proof_by_employee($ele_val->id,$employee_id);
				$data['desired'] = $this->GetSessionProgress_model->get_gesired_by_employee($ele_val->id,$employee_id,'practice');
			    }  // if condition of $resultArr			
												
				} // foreach loop of $elementsArr	
				$jsonArr[] = $data;	
				} // if condition of $elementsArr	
					
						
			}

			$valid = ['status' => "true","statuscode" => 200,'response' =>$jsonArr];
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

/* Function for the delete answer of performance */
public function DeleteAnswerOfPerformance_post(){		
		$no_found = ['status' => "true","statuscode" => 404,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$logged_in_id = $this->post('logged_in_id');		
		$element_id = $this->post('element_id');
		$employee_id = $this->post('employee_id');

		if(isset($logged_in_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($logged_in_id,$headers['Authorization']);

			if($token_status == TRUE){
				$deleteStatus = $this->GetSessionProgress_model->DeleteAnswerOfPerformance($element_id,$employee_id);
				
				if($deleteStatus == TRUE){
					$valid = ['status' => "true","statuscode" => 200,'response' =>"Record deleted"];
					$this->set_response($valid, REST_Controller::HTTP_OK);
				}else{
					$this->set_response($no_found, REST_Controller::HTTP_NOT_FOUND);
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

/* Function for the delete answer of practice */
public function DeleteAnswerOfPractice_post(){
		$no_found = ['status' => "true","statuscode" => 404,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$logged_in_id = $this->post('logged_in_id');		
		$delete_id    = $this->post('delete_id');
		$employee_id  = $this->post('emp_id');

		if(isset($logged_in_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($logged_in_id,$headers['Authorization']);

			if($token_status == TRUE){
				$deleteStatus = $this->GetSessionProgress_model->DeleteAnswerOfPractice($delete_id,$employee_id);
				
				if($deleteStatus == TRUE){
					$valid = ['status' => "true","statuscode" => 200,'response' =>"Record deleted"];
					$this->set_response($valid, REST_Controller::HTTP_OK);
				}else{
					$this->set_response($no_found, REST_Controller::HTTP_NOT_FOUND);
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