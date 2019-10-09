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
		$this->load->model('GetMaturityReporting_modal');
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
			$token_status = check_token($user_id,$headers['Authorization']);
			if($token_status == TRUE){
				$results_performance_mc = $this->GetMaturityReporting_modal->GetMaturityReporting_performance_mc();
				$Pass_Data["data"] = array();
				if(!empty($results_performance_mc)){
					$P_Count = 0;
					$P_A_Count = 0;
					foreach($results_performance_mc as $RPM){
						$P_Count++;
						$P_A_Count += (double)$RPM->count_p_answer;
					}
					$P_A_Average = $P_A_Count / $P_Count;
					$Pass_Data["data"]["performance_mc"] = number_format($P_A_Average,2);
				}else{
					$Pass_Data["data"]["performance_mc"] = number_format(0,2);
				}
				$results_answer_mc = $this->GetMaturityReporting_modal->GetMaturityReporting_answer_mc();
				if(!empty($results_answer_mc)){
					$A_Count = 0;
					$A_A_Count = 0;
					foreach($results_answer_mc as $RPM){
						$A_Count++;
						$A_A_Count += (double)$RPM->count_a_answer;
					}
					$A_A_Average = $A_A_Count / $A_Count;
					$Pass_Data["data"]["answer_mc"] = number_format($A_A_Average,2);
				}else{
					$Pass_Data["data"]["answer_mc"] = number_format(0,2);
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