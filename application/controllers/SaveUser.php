<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveUser extends REST_Controller {
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
		$this->load->model('SaveUser_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,email,firstname,lastname,role,password is missing or empty';
		$user_id = $this->post('user_id');
		$email = $this->post('email');
		$firstname = $this->post('firstname');
		$lastname = $this->post('lastname');
		$role = $this->post('role');
		$password = md5($this->post('password'));
		if(isset($user_id) && isset($email) && isset($firstname) && isset($lastname) && isset($role) && isset($password)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				/* $Check_Availability_Result = $this->SaveUser_modal->Check_User_Availability($email);
				if($Check_Availability_Result==0){ */
					$Insert_Array = array(
						"`email`" => $email,
						"`firstname`" => $firstname,
						"`lastname`" => $lastname,
						"`role`" => $role,
						"`password`" => $password,
					);
					$Insert_saveUser_Result = $this->SaveUser_modal->Insert_User($Insert_Array);
					if($Insert_saveUser_Result > 0){
						$data = [
							'email' => $email,
							'firstname' => $firstname,
							'lastname' => $lastname,
							'role' => $role,
							'password' => $password,
							'id'    => $Insert_saveUser_Result
						];
						$Pass_Data["data"] = $data;
						$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
					}else{
						$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"User not Inserted"];
						$this->set_response($not_inserted, REST_Controller::HTTP_OK);
					}
				/* }else{
						$not_available = ['status' => "true","statuscode" => 200,'response' =>"Email ID already registered."];
						$this->set_response($not_available, REST_Controller::HTTP_OK);
				} */
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