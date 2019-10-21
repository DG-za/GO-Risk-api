<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetMCByElement extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 24-09-2019
	*  Description : A controller contain GetMCByElement related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('GetMCByElement_modal');
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
			
			if($token_status == TRUE){
				$All_Answer = $this->GetMCByElement_modal->Get_Answer_MC_by_Element_ID($Element_ID);
				$Pass_Data = array();
				$customArr = array('1','2','3','4');
				$elementsArr = [];
				if(!empty($All_Answer)){

					/* Add matched elemets to the $elementsArr */			
					for($i=0; $i<4; $i++){
						if(isset($All_Answer[$i]->answer)){
						$elementsArr[$i] = $All_Answer[$i]->answer;
						}
					}
						
					/* Default code */				
					foreach($All_Answer as $key => $value){
						$merge_array = array(
							"name" => $value->answer,
							"value" => $value->num);
						$Pass_Data["data"][] = $merge_array;
					}

					/* Adding Blank Json Object to main array */
					$customTempArr = array_diff($customArr, $elementsArr);
					foreach($customTempArr as $key => $value) {
						$merge_array_mc = array(
							"name" => $value,
							"value" => 0							
						);
						$Pass_Data["data"][] =$merge_array_mc;
					} 

					/* Sorting Array in Ascending order like name wise */
					$price = array_column($Pass_Data["data"], 'name');
					array_multisort($price, SORT_ASC, $Pass_Data["data"]);

					$valid = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				}else{
					$Pass_Data["data"][0] = array("name" => 1,"value" => 0);
					$Pass_Data["data"][1] = array("name" => 2,"value" => 0);
					$Pass_Data["data"][2] = array("name" => 3,"value" => 0);
					$Pass_Data["data"][3] = array("name" => 4,"value" => 0);
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