<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class DeleteProcessStep extends REST_Controller
{
	/***************************************************************
	 *  Project Name : 4Xcellence Solutions
	 *  Created By :
	 *  Created Date : 05-11-2019
	 *  Description : A controller contain Deletion related methods
	 *  Modification History :
	 *
	 ***************************************************************/
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('check_token');
		$this->load->model('risk/DeleteProcessStep_model');
	}

	public function index_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Record Deleted"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "Record Not Deleted"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$message = 'Required field(s) id is missing or empty';
		$user_id = $this->post('user_id');
		$id = $this->post('id');

		if (isset($id) && !empty($id) && isset($user_id) && !empty($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$results = $this->DeleteProcessStep_model->delete($id);
				if (!empty($results)) {
					$this->set_response($valid, REST_Controller::HTTP_OK);
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
