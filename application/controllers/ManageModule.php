<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class ManageModule extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 28-09-2019
	*  Description : A controller contain SaveUser related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('ManageModule_model'); 
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$module_id = $this->post('module_id');
		$moduleObject = $this->post('moduleObject');
		if($moduleObject['parent'] == null){
			$moduleObject['parent']=0;
		}
		//print_r($moduleObject); die;
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				if($module_id == ""){
				$module_alias = strtolower(str_replace(' ', '_', trim($moduleObject['module_name'])));

				$dataArr = array(
					'module_name' => trim($moduleObject['module_name']), 
					'module_alias' => $module_alias,
					'parent' => $moduleObject['parent'],
					'is_read' => $moduleObject['is_read'],
					'is_update' => $moduleObject['is_update'],
					'is_delete' => $moduleObject['is_delete']
					);
				
				$ResultArr = $this->ManageModule_model->Save_Module($dataArr);
				}else{
					$module_alias = strtolower(str_replace(' ', '_', trim($moduleObject['module_name'])));
					$dataArr = array(
					'module_name' => trim($moduleObject['module_name']), 
					'module_alias' => $module_alias,
					'parent' => $moduleObject['parent'],
					'is_read' => $moduleObject['is_read'],
					'is_update' => $moduleObject['is_update'],
					'is_delete' => $moduleObject['is_delete']
					);
					$ResultArr = $this->ManageModule_model->update_Module($moduleObject,$module_id);
				}
				if($ResultArr){					
						$inserted = ['status' => "true","statuscode" => 200,'response' => $ResultArr];
						$this->set_response($inserted, REST_Controller::HTTP_OK);					
				}else{
					$not_available = ['status' => "false","statuscode" => 404,'response' =>"Data not inserted"];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
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

	public function GetModules_post(){
		$result = $this->ManageModule_model->get_modules();
		if(!empty($result)){
			$inserted = ['status' => "true","statuscode" => 200,'response' => $result];
			$this->set_response($inserted, REST_Controller::HTTP_OK);
		}else{
			$not_inserted = ['status' => "false","statuscode" => 404,'response' => "No record found"];
			$this->set_response($not_inserted, REST_Controller::HTTP_OK);
		}
		
		
	}
}