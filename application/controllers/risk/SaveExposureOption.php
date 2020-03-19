<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class SaveExposureOption extends REST_Controller
{
	/***************************************************************
	 *  Project Name : 4Xcellence Solutions
	 *  Created By : Stefan
	 *  Created Date : 14-03-2020
	 *  Description : A controller to save the exposures.
	 *  Modification History :
	 *
	 ***************************************************************/

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('check_token');
		$this->load->model('risk/SaveExposureOption_model');
	}

	public function index_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$data = array();
		$option_id = $this->post('option_id');
		$message = 'Required field(s) meta_key, risk_exposure_type, risk_conseq_type or meta_value is missing or empty';
		$user_id = $this->post('user_id');
		$data[] = $this->post('data');
		$data[0]['meta_value'] = json_encode($data[0]['meta_value']);

		if (isset($user_id) && !empty($user_id) && isset($data) && !empty($data)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				if ($option_id === 0 || $option_id === "0") {
					$results = $this->SaveExposureOption_model->save_exposure_option($data);
				} else {
					$results = $this->update_exposure_option->update_Risk($data, $option_id);
				}

				if (!empty($results)) {
					$pass_data["data"]['insertId'] = $results;
					$inserted = ['status' => "true", "statuscode" => 200, 'response' => $pass_data];
					$this->set_response($inserted, REST_Controller::HTTP_OK);
				} else {
					$not_inserted = ['status' => "true", "statuscode" => 200, 'response' => "Record Not Inserted."];
					$this->set_response($not_inserted, REST_Controller::HTTP_OK);
				}
			} else if ($token_status == FALSE) {
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			} else {
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		} else {
			$parameter_required_array = ['status' => "true", "statuscode" => 404, 'response' => $data];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}
}
