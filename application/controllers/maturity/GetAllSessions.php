<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetAllSessions extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 24-10-2019
	*  Description : A controller contain GetAllUsers related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/GetAllSessions_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$toUserId = $this->post('to_user_id');
		
		$role = $this->post('role');
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			$companyArr=array();
			if($token_status == TRUE){				
				if($this->post('company_id') != null && $this->post('company_id') != "null"){
					$company_id = $this->post('company_id');
					$companyArr[]=$company_id;					
					$AllChildCompanies = $this->GetAllSessions_model->getAllChildCompanies($company_id);					
					foreach ($AllChildCompanies as $key => $value) {
						$companyArr[]= $value->id;
					}
				}

				if(isset($toUserId) && $toUserId != 'all'){
					$getAllSessions_Result = $this->GetAllSessions_model->getAllSessions_User($toUserId);
					/*print_r($getAllSessions_Result);
					die();*/
				}else{
					$getAllSessions_Result = $this->GetAllSessions_model->getAllSessions();
				}
				$Pass_Data = array();
				$totalCompleted = array();
				if(!empty($getAllSessions_Result)){
					foreach($getAllSessions_Result as $key => $value){
						$practiceUserCountBySession = $this->GetAllSessions_model->getPracticeUserCountBySession($value->id);
						$performanceUserCountBySession = $this->GetAllSessions_model->getPerformanceUserCountBySession($value->id);
						$value->practiceUserCount=sizeof($practiceUserCountBySession);
						$value->performanceUserCount=sizeof($performanceUserCountBySession);
						$totalCompleted = array_intersect($practiceUserCountBySession,$performanceUserCountBySession);
						$value->sessionCompletedUserCount=sizeof($totalCompleted);
						if(sizeof($practiceUserCountBySession) > sizeof($performanceUserCountBySession)){
							$value->totalUserCount=sizeof($practiceUserCountBySession);
						}else{
							$value->totalUserCount=sizeof($performanceUserCountBySession);
						}

						if($role != "admin"){
								if($companyArr){
									if(in_array($value->company_id, $companyArr)){
										$Pass_Data["data"][] = $value;
									}
								}else{
									$Pass_Data["data"][] = $value;
								}
						}else{
							if($companyArr){
								if(in_array($value->company_id, $companyArr)){
									$Pass_Data["data"][] = $value;
								}
							}else{
								$Pass_Data["data"][] = $value;
							}
						}
							
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

}