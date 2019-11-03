<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetProofByElement_User extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 25-09-2019
	*  Description : A controller contain GetProofByElement related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('GetProofByElement_User_modal');
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
				$All_Proof = $this->GetProofByElement_User_modal->Get_Proof_by_Element_ID_User($Element_ID,$user_id);
				$Pass_Data = array();
				$Pass_Data["data"][1][] = '';
				$Pass_Data["data"][2][] = '';
				if(!empty($All_Proof)){
					foreach($All_Proof as $key => $value){
						//$merge_array = array("proof_id" => $value->id,"proof" => $value->proof,"type" => $value->type);
						if($value->type == 1){
							$Pass_Data["data"][1][] = $value->id;
						}else{
							$Pass_Data["data"][2][] = $value->id;
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