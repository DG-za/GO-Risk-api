<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetAccessPermissions extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 24-09-2019
	*  Description : A controller contain GetProof related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('GetAccessPermissions_model');
	}
	
	public function index_post(){		
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];		
		$message = 'Required field(s) user_id,element_id is missing or empty';
	
		if(true){
			$headers = $this->input->request_headers();
			//if($token_status == FALSE){
				$Pass_Data = array();
				$DataArr = $this->GetAccessPermissions_model->Get_Menu_Item_Access();
				if(!empty($DataArr)){
					$this->set_response($DataArr, REST_Controller::HTTP_OK);
				}else{
					$this->set_response($no_found, REST_Controller::HTTP_OK);
				}
			/*}else if($token_status == FALSE){
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			}else{
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}*/
		}else{
			$parameter_required_array = ['status' => "true","statuscode" => 404,'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}


	public function updateMenuItemStatus_post(){
		$valid =    ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid =  ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found =['status' => "true","statuscode" => 404,'response' =>"Token not found"];		
		$message = 'Required field(s) user_id,item_alias is missing or empty';
		$item_alias = $this->post('item_alias');
		$user_id =  $this->post('user_id');
        $is_allow = $this->post('is_allow');

		if(isset($user_id) && isset($item_alias)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			if($token_status == TRUE){
				$Pass_Data = array();				
				$Update_Array = array(
					"`is_allow`" => $is_allow	
				);
				$Where_Array = array(
					"`permission_alias`" => $item_alias
				);
				
				$Update_status = $this->GetAccessPermissions_model->Update_Menu_Item_Status($Update_Array,$Where_Array);

				if(!empty($Update_status)){
					$this->set_response($Update_status, REST_Controller::HTTP_OK);
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