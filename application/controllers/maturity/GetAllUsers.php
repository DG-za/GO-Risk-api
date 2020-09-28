<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class GetAllUsers extends REST_Controller
{
	/***************************************************************
	 *  Project Name : 4Xcellence Solutions
	 *  Created By :
	 *  Created Date : 24-10-2019
	 *  Description : A controller contain GetAllUsers related methods
	 *  Modification History :
	 *
	 ***************************************************************/

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('check_token');
		$this->load->model('maturity/GetAllUsers_model');
	}

	public function index_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$selectedSessionId = $this->post('currentSesisonId');

		if (isset($user_id) && isset($selectedSessionId)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$getAllUsers_Result = $this->GetAllUsers_model->getAllUsers_function();
				$Pass_Data = array();
				if (!empty($getAllUsers_Result)) {
					foreach ($getAllUsers_Result as $key => $value) {
						//if($value->role != "admin"){
						$merge_array = array("id" => $value->id, "email" => $value->email, "firstname" => $value->firstname, "lastname" => $value->lastname, "role" => $value->role, "password" => $value->password, "createdDate" => $value->created_date);
						$Pass_Data["data"][] = $merge_array;
						//}
					}
					$valid = ['status' => "true", "statuscode" => 200, 'response' => $Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				} else {
					$this->set_response($no_found, REST_Controller::HTTP_OK);
				}
			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$getAllUsers_Result = $this->GetAllUsers_model->getAllUsers_function();
				$Pass_Data = array();
				if (!empty($getAllUsers_Result)) {
					foreach ($getAllUsers_Result as $key => $value) {
						if ($value->role != "admin") {
							$merge_array = array(
								"id" => $value->id,
								"email" => $value->email,
								"firstname" => $value->firstname,
								"lastname" => $value->lastname,
								"role" => $value->role,
								"password" => $value->password,
								"company" => $value->company,
								"userRoleId" => $value->userRoleId,
								"createdDate" => $value->created_date
							);
							$isAnswered = $this->GetAllUsers_model->checkIsAnswered_function($value->id);
							if ($isAnswered) {
								$merge_array['isAnswered'] = True;
							} else {
								$merge_array['isAnswered'] = False;
							}
							$Pass_Data["data"][] = $merge_array;
						}
					}
					$valid = ['status' => "true", "statuscode" => 200, 'response' => $Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				} else {
					$this->set_response($no_found, REST_Controller::HTTP_OK);
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

	public function getUsers_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$selectedSessionId = $this->post('selectedSessionId');
		if (isset($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$getAllUsers_Result = $this->GetAllUsers_model->getUsers_function();
				$Pass_Data = array();
				//$sessionUsers="";
				if (!empty($getAllUsers_Result)) {
					if ($selectedSessionId != null && $selectedSessionId != "null") {

						//$sessionUsers=explode(",",$sessionUsers->user);
						foreach ($getAllUsers_Result as $key => $value) {
							$sessionUsers = $this->GetAllUsers_model->getSessionUsers_function($value->id, $selectedSessionId);

							if (!empty($sessionUsers)) {
								$merge_array = array("id" => $value->id, "email" => $value->email, "firstname" => $value->firstname, "lastname" => $value->lastname, "role" => $value->role);
								$Pass_Data["data"][] = $merge_array;
							}
						}
					} else {
						foreach ($getAllUsers_Result as $key => $value) {
							$merge_array = array("id" => $value->id, "email" => $value->email, "firstname" => $value->firstname, "lastname" => $value->lastname, "role" => $value->role);
							$Pass_Data["data"][] = $merge_array;
						}
					}
					$valid = ['status' => "true", "statuscode" => 200, 'response' => $Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				} else {
					$this->set_response($no_found, REST_Controller::HTTP_OK);
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


}
