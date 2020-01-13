<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetMaturityReporting extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 24-09-2019
	*  Description : A controller contain GetMaturityReporting related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/GetMaturityReporting_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$selectedSessionId = $this->post('selectedSessionId');
		
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			if($token_status == TRUE){

				$results_performance_mc = $this->GetMaturityReporting_model->GetMaturityReporting_performance_mc($selectedSessionId);
				$Pass_Data["data"] = array();
				if(!empty($results_performance_mc)){
					$P_Count = 0;
					$P_A_Count = 0;
					foreach($results_performance_mc as $RPM){
						$P_Count++;
						$P_A_Count += (double)$RPM->count_p_answer;
					}
					$P_A_Average = $P_A_Count / $P_Count;
					if($P_A_Average > 4){
						$P_A_Average = 4;
					}
					$Pass_Data["data"]["performance_mc"] = number_format($P_A_Average,1);
				}else{
					$Pass_Data["data"]["performance_mc"] = number_format(0,1);
				}

				$results_answer_mc = $this->GetMaturityReporting_model->GetMaturityReporting_answer_mc($selectedSessionId);
				if(!empty($results_answer_mc)){
					$A_Count = 0;
					$A_A_Count = 0;
					foreach($results_answer_mc as $RPM){
						$A_Count++;
						$A_A_Count += (double)$RPM->count_a_answer;
					}
					$A_A_Average = $A_A_Count / $A_Count;
					if($A_A_Average > 4){
						$A_A_Average = 4;
					}
					$Pass_Data["data"]["answer_mc"] = number_format($A_A_Average,1);
				}else{
					$Pass_Data["data"]["answer_mc"] = number_format(0,1);
				}

				$results_performance_desired = $this->GetMaturityReporting_model->GetMaturityReporting_performance_desired($selectedSessionId);
				if(!empty($results_performance_desired)){
					$P_Count = 0;
					$P_D_Count = 0;
					foreach($results_performance_desired as $RPM){
						$P_Count++;
						$P_D_Count += (double)$RPM->count_p_desired;
					}
					$P_D_Average = $P_D_Count / $P_Count;
					if($P_D_Average > 4){
						$P_D_Average = 4;
					}
					$Pass_Data["data"]["performance_desired"] = number_format($P_D_Average,1);
				}else{
					$Pass_Data["data"]["performance_desired"] = number_format(0,1);
				}

			  $results_answer_desired = $this->GetMaturityReporting_model->GetMaturityReporting_answer_desired($selectedSessionId);
				if(!empty($results_answer_desired)){
					$A_Count = 0;
					$A_D_Count = 0;
					foreach($results_answer_desired as $RPM){
						$A_Count++;
						$A_D_Count += (double)$RPM->count_a_desired;
					}
					$A_D_Average = $A_D_Count / $A_Count;
					if($A_D_Average > 4){
						$A_D_Average = 4;
					}
					$Pass_Data["data"]["answer_desired"] = number_format($A_D_Average,1);
				}else{
					$Pass_Data["data"]["answer_desired"] = number_format(0,1);
				}
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


				
				