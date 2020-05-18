<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class UserRole extends REST_Controller
{
	/***************************************************************
	 *  Project Name : 4Xcellence Solutions
	 *  Created By :
	 *  Created Date : 28-09-2019
	 *  Description : A controller contain SaveUser related methods
	 *  Modification History :
	 *
	 ***************************************************************/

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('check_token');
		$this->load->model('UserRole_model');
	}

	public function index_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');


		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$ResultArr = $this->UserRole_model->Get_modules();
				if ($ResultArr) {
					$Pass_Data["data"] = $ResultArr;
					$inserted = ['status' => "true", "statuscode" => 200, 'response' => $Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				} else {
					$not_available = ['status' => "true", "statuscode" => 200, 'response' => "Data not found"];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
				}

			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}


	public function setModulePermission_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_role_id,data is missing or empty';

		//$user_role_id = $this->post('user_role_id');
		$data = $this->post('data');
		$user_id = $this->post('user_id');
		$user_role_id = $this->post('user_role_id');
		//print_r($data); die;
		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);
			if ($token_status == TRUE) {
				for ($i = 0; $i < sizeof($data); $i++) {
					$Module_Permissions_exist = $this->UserRole_model->Fetch_Module_Permissions($data[$i]['user_role_id'], $data[$i]['module_id']);
					if ($Module_Permissions_exist) {
						$ResultArr = $this->UserRole_model->Update_modules($data[$i]);
					} else {
						$ResultArr = $this->UserRole_model->Set_modules($data[$i]);
					}


				}

				if ($ResultArr > 0) {
					$ResultArr = $this->UserRole_model->Update_role_status($user_role_id);
					if ($ResultArr) {
						$Pass_Data = ['status' => "true", "statuscode" => 200, 'response' => 'Successfully Added'];
						$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
					}
				} else {
					$not_inserted = ['status' => "true", "statuscode" => 200, 'response' => "Something wrong"];
					$this->set_response($not_inserted, REST_Controller::HTTP_OK);
				}
			} else if ($token_status == FALSE) {

				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);

			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}


	public function getUserRoles_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');


		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$ResultArr = $this->UserRole_model->Get_roles();
				if ($ResultArr) {
					$Pass_Data["data"] = $ResultArr;
					$inserted = ['status' => "true", "statuscode" => 200, 'response' => $Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				} else {
					$not_available = ['status' => "false", "statuscode" => 200, 'response' => "Data not found"];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
				}

			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}


	public function addRole_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$user_role_name = $this->post('role_name');
		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);
			if ($token_status == TRUE) {
				$ResultArr = $this->UserRole_model->Add_role($user_role_name);
				if ($ResultArr > 0) {
					$Pass_Data = ['status' => "true", "statuscode" => 200, 'response' => 'Successfully Added'];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				} else {
					$not_inserted = ['status' => "true", "statuscode" => 200, 'response' => "Something wrong"];
					$this->set_response($not_inserted, REST_Controller::HTTP_OK);
				}
			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}

	}


	// Fetch permission for the single module

	public function fetchModulePermissions_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$role_id = $this->post('user_role_id');
		$module_id = $this->post('module_id');

		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$ResultArr = $this->UserRole_model->Fetch_Module_Permissions($role_id, $module_id);
				//print_r($ResultArr); die;
				if ($ResultArr) {
					$Pass_Data["data"] = $ResultArr;
					$inserted = ['status' => "true", "statuscode" => 200, 'response' => $ResultArr];
					$this->set_response($inserted, REST_Controller::HTTP_OK);
				} else {
					$not_available = ['status' => "false", "statuscode" => 404, 'response' => "Data not found"];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
				}

			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}

// Admin can fetch single module permissions base on module Alias
	public function fetchModulePermissionsBaseOnAlias_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$role_id = $this->post('user_role_id');
		$module_alias = $this->post('module_alias');

		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$ResultArr = $this->UserRole_model->Fetch_Module_Permissions_Base_On_Alias($role_id, $module_alias);
				if ($ResultArr) {
					$Pass_Data["data"] = $ResultArr;
					$inserted = ['status' => "true", "statuscode" => 200, 'response' => $ResultArr];
					$this->set_response($inserted, REST_Controller::HTTP_OK);
				} else {
					$not_available = ['status' => "false", "statuscode" => 200, 'response' => "Data not found"];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
				}

			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}

// Fetch permission for the single module

	public function fetchModulePermissionsByRoleId_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$role_id = $this->post('user_role_id');

		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$ResultArr = $this->UserRole_model->Fetch_Role_Permissions($role_id);
//print_r($ResultArr); die;
				if ($ResultArr) {
					foreach ($ResultArr as $key => $value) {
						$Pass_Data[$value->module_id] = $value;
					}
					$inserted = ['status' => "true", "statuscode" => 200, 'response' => $Pass_Data];
					$this->set_response($inserted, REST_Controller::HTTP_OK);
				} else {
					$not_available = ['status' => "false", "statuscode" => 200, 'response' => "Data not found"];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
				}

			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}

	public function getAllUserRoles_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');


		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			//$token_status = check_token($user_id,$headers['Authorization']);

			if (TRUE) {
				$ResultArr = $this->UserRole_model->Get_roles();
				if ($ResultArr) {
					$Pass_Data["data"] = $ResultArr;
					$inserted = ['status' => "true", "statuscode" => 200, 'response' => $ResultArr];
					$this->set_response($inserted, REST_Controller::HTTP_OK);
				} else {
					$not_available = ['status' => "true", "statuscode" => 200, 'response' => "Data not found"];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
				}

			} else if (true) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}

}
