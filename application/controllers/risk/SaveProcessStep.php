<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class SaveProcessStep extends REST_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('check_token');
		$this->load->model('risk/SaveProcessStep_model');
	}

	public function index_post()
	{
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$message = 'Required field(s) user_id, name, or company_id is missing or empty';

		$id = $this->post('id');
		$user_id = $this->post('user_id');
		$name = $this->post('name');
		$company_id = $this->post('company_id');

		if (isset($user_id) && isset($name) && isset($company_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$Pass_Data = array();
				$insertArray = array(
					"`name`" => $name,
					"`company_id`" => $company_id,
				);

				if (!isset($id) || $id == 0 || $id == "0") {
					$id = $this->SaveProcessStep_model->Save_Data($insertArray);
				} else {
					$id = $this->SaveProcessStep_model->Update_Data($insertArray, $id);
				}


				if ($id > 0) {
					$data = array(
						'name' => $name,
						'id' => $id,
						"company_id" => $company_id,
					);

					$valid = ['status' => "true", "statuscode" => 200, 'response' => $data];
					$Pass_Data["data"] = $valid;
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				} else {
					$not_inserted = ['status' => "true", "statuscode" => 200, 'response' => "Save Element not Inserted"];
					$Pass_Data["data"] = $not_inserted;
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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
