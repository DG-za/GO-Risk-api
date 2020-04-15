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
		$toUserId = $this->post('to_user_id');

		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			if($token_status == TRUE){
				if(isset($toUserId) && $toUserId != 'all'){
					$results_performance_mc = $this->GetMaturityReporting_model->GetMaturityReporting_performance_mc_User($selectedSessionId,$toUserId);
				}else{
					$results_performance_mc = $this->GetMaturityReporting_model->GetMaturityReporting_performance_mc($selectedSessionId);
				}
				
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
				if(isset($toUserId) && $toUserId != 'all'){
					$results_answer_mc = $this->GetMaturityReporting_model->GetMaturityReporting_answer_mc_User($selectedSessionId,$toUserId);
				}else{
					$results_answer_mc = $this->GetMaturityReporting_model->GetMaturityReporting_answer_mc($selectedSessionId);
				}
				
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
				if(isset($toUserId) && $toUserId != 'all'){
					$results_performance_desired = $this->GetMaturityReporting_model->GetMaturityReporting_performance_desired_User($selectedSessionId,$toUserId);
				}else{
					$results_performance_desired = $this->GetMaturityReporting_model->GetMaturityReporting_performance_desired($selectedSessionId);
				}
				
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

				if(isset($toUserId) && $toUserId != 'all'){
					$results_answer_desired = $this->GetMaturityReporting_model->GetMaturityReporting_answer_desired_User($selectedSessionId,$toUserId);
				}else{
					$results_answer_desired = $this->GetMaturityReporting_model->GetMaturityReporting_answer_desired($selectedSessionId);
				}
			  
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


	public function GetCurrentReport_post(){
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
				$All_Elements = $this->GetMaturityReporting_model->Get_All_Elements_Function();
				$Pass_Data = array();				
				if(!empty($All_Elements)){
					foreach($All_Elements as $key => $value){
				$customArr = array('1','2','3','4');
				$id = $value->id;
				$name = $value->name;
				$merge_array["name"] = $name;
				$merge_array["series"] = array();
				$merge_array["pgrand_total"] = array();
				$merge_array["vgrand_total"] = array();
				$All_Answers_By_Element = $this->GetMaturityReporting_model->Get_Structured_Answers_By_Element($id,$selectedSessionId,$toUserId);
				$Total_Answers_By_Element = $this->GetMaturityReporting_model->Get_Total_Answers_By_Element($id,$selectedSessionId,$toUserId);
				
				$elementsArr = [];
				if(!empty($All_Answers_By_Element)){
				    /* Add matched elemets to the $elementsArr */			
					for($i=0; $i<4; $i++){
						if(isset($All_Answers_By_Element[$i]->name)){
						$elementsArr[$i] = $All_Answers_By_Element[$i]->name;
						}
					}

					/* Get total count of answers for this element */
					foreach($Total_Answers_By_Element as $key => $value){
						$total = $value->total;
					}

					/* Build array for chart */
					$pgrandtotal = 0;
					$vgrandtotal = 0;
					foreach($All_Answers_By_Element as $key_mc => $value_mc){
						$merge_array_mc = array(
							"name" => $value_mc->name,
							"percentage" => number_format(($value_mc->value/$total)*100,1),
							"value" => $value_mc->value,
							"count"=>$value_mc->value,
							"sum"=>$value_mc->sum,
							"total" => $total
						);
						$pgrandtotal = $pgrandtotal + $merge_array_mc['percentage'];
						$vgrandtotal = $vgrandtotal + $merge_array_mc['value'];
						$merge_array["series"][] = $merge_array_mc;

					}
					$merge_array["pgrand_total"] = number_format($pgrandtotal,2);
					$merge_array["vgrand_total"] = $vgrandtotal;
					/* Adding Blank Json Object to main array */
					$customTempArr = array_diff($customArr, $elementsArr);
					foreach($customTempArr as $key => $value) {
						$merge_array_mc = array(
							"name" => $value,
							"value" => 0,
							"sum"=>'0'
						);
						$merge_array["series"][] =$merge_array_mc;
					}

					/* Sorting Array in Ascending order like name wise */
					$price = array_column($merge_array["series"], 'name');
					array_multisort($price, SORT_ASC, $merge_array["series"]);

							$Pass_Data["data"][] = $merge_array;
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


	public function GetDesiredReport_post(){
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

				$All_Elements = $this->GetMaturityReporting_model->Get_All_performance_areas_Function();
				$Pass_Data["data"] = array();
				if(!empty($All_Elements)){
					foreach($All_Elements as $key => $value){
						$customArr = array('1','2','3','4');
						$id = $value->id;
						$name = $value->name;
						$merge_array["name"] = $name;
						$merge_array["series"] = array();
						$merge_array["pgrand_total"] = array();
						$merge_array["vgrand_total"] = array();
						if($toUserId == 'all'){
						$All_Performance_Answers_By_Area = $this->GetMaturityReporting_model->Get_Structured_Performance_Answers_By_Area($id,$selectedSessionId);
						$Total_Performance_Answers_By_Area = $this->GetMaturityReporting_model->Get_Total_Performance_Answers_By_Area($id,$selectedSessionId);
					}else{
						$All_Performance_Answers_By_Area = $this->GetMaturityReporting_model->Get_Structured_Performance_Answers_By_Area_User($id,$selectedSessionId,$toUserId);
						$Total_Performance_Answers_By_Area = $this->GetMaturityReporting_model->Get_Total_Performance_Answers_By_Area_User($id,$selectedSessionId,$toUserId);
					}
						$elementsArr = [];
						if(!empty($All_Performance_Answers_By_Area)){
							/* Add matched elemets to the $elementsArr */		
							for($i=0; $i<4; $i++){
								if(isset($All_Performance_Answers_By_Area[$i]->name)){
								$elementsArr[$i] = $All_Performance_Answers_By_Area[$i]->name;
								}
							}

							/* Get total count of answers for this element */
							foreach($Total_Performance_Answers_By_Area as $key => $value){
								$total = $value->total;
							}

							/* Build array for chart */
							$pgrandtotal = 0;
							$vgrandtotal = 0;
							foreach($All_Performance_Answers_By_Area as $key_mc => $value_mc){
								$merge_array_mc = array(
									"name" => $value_mc->name,
									"percentage" => number_format(($value_mc->value/$total)*100,1),
									"value" => $value_mc->value,
									"count"=>$value_mc->value,
									"sum"=>$value_mc->sum,
									"total" => $total
								);			
								$pgrandtotal = $pgrandtotal + $merge_array_mc['percentage'];
								$vgrandtotal = $vgrandtotal + $merge_array_mc['value'];				
								$merge_array["series"][] = $merge_array_mc;
							}

							$merge_array["pgrand_total"] = number_format($pgrandtotal,2);
							$merge_array["vgrand_total"] = $vgrandtotal;
						/* Adding Blank Json Object to main array */
						$customTempArr = array_diff($customArr, $elementsArr);
						foreach($customTempArr as $key => $value) {
							$merge_array_mc = array(
								"name" => $value,
								"value" => 0,
								"sum"=>'0'
							);
							$merge_array["series"][] =$merge_array_mc;
						}

					/* Sorting Array in Ascending order like name wise */
					$price = array_column($merge_array["series"], 'name');
					array_multisort($price, SORT_ASC, $merge_array["series"]);
					$Pass_Data["data"][] = $merge_array;
						}
					}
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


				
				