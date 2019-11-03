<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetPerformanceMCByElement extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 24-09-2019
	*  Description : A controller contain GetPerformanceMCByElement related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('GetPerformanceMCByElement_modal');
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
			
			$Pass_Data["data"] = array();
			if($token_status == TRUE){
				$All_Answer = $this->GetPerformanceMCByElement_modal->Get_Structured_Performance_Answers_by_Element($Element_ID);
				$Total_Answers_By_Element = $this->GetPerformanceMCByElement_modal->Get_Total_Performance_Answers_by_Element($Element_ID);

				$Get_Answer_Array = array();
				$merge_array = array();
				if(!empty($All_Answer)){

					/* Get total count of answers for this element */
					foreach($Total_Answers_By_Element as $key => $value){
						$total = $value->total;
					}

					/* Build array for chart */	
					foreach($All_Answer as $key => $value){
						$merge_array[$value->answer] = array(
							"name" => $value->answer,
							// "count" => $value->count,
							// "sum" => $value->sum,
							// "total" => $total,
							"value" => number_format(($value->sum/$total),1));
							// "value" => $value->num);
						$Get_Answer_Array[] = $value->answer;
					}

					$Answer_Array = array("1","2","3","4");
					foreach($Answer_Array as $AA){
						if(!in_array($AA,$Get_Answer_Array)){
							$blank_merge_array = array("name" => $AA,"value" => 0);
							$Pass_Data["data"][] = $blank_merge_array;
						}else{
							$Pass_Data["data"][] = $merge_array[$AA];
						}
					}
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				}else{
					$Answer_Array = array("1","2","3","4");
					foreach($Answer_Array as $AA){
						$merge_array = array("name" => $AA,"value" => 0);
						$Pass_Data["data"][] = $merge_array;
					}
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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