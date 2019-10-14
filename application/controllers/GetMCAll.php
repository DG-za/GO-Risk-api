<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetMCAll extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 26-09-2019
	*  Description : A controller contain GetMCAll related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('GetMCAll_modal');
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
				$All_Elements = $this->GetMCAll_modal->Get_All_Elements_Function();
				$Pass_Data = array();
				if(!empty($All_Elements)){
					foreach($All_Elements as $key => $value){
						$id = $value->id;
						$name = $value->name;
						$merge_array["name"] = $name;
						$merge_array["series"] = array();
						$All_Answer_MC = $this->GetMCAll_modal->Get_All_answer_mc_By_Elements_ID_Function($id);
						if(!empty($All_Answer_MC)){
							foreach($All_Answer_MC as $key_mc => $value_mc){
								$merge_array_mc = array("name" => $value_mc->name,"value" => $value_mc->score/$value_mc->value,"score"=>$value_mc->score);
								$merge_array["series"][] = $merge_array_mc;
							}
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
}