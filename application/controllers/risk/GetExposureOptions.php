<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class GetExposureOptions extends REST_Controller
{
	/***************************************************************
	 *  Project Name : 4Xcellence Solutions
	 *  Created By :
	 *  Created Date : 25-09-2019
	 *  Description : A controller contain GetActionsByElement related methods
	 *  Modification History :
	 *
	 ***************************************************************/
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('check_token');
		$this->load->model('risk/GetExposureOptions_model');
	}

	public function index_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');

		if (isset($user_id) && !empty($user_id)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);
			if ($token_status == TRUE) {
				$output_array = array();
				$results = $this->GetExposureOptions_model->get_exposure_options();

				if (!empty($results)) {
					$i = 0;

					foreach ($results as $key => $value) {
						$output_array[$i]['key'] = $value->meta_key;
						$output_array[$i]['values'] = json_decode($value->meta_value);
						$output_array[$i]['description'] = $value->description;
						$output_array[$i]['risk_conseq_type'] = $value->risk_conseq_type;
						$output_array[$i]['risk_exposure_type'] = $value->risk_exposure_type;
						$i++;
					}
				}
				$pass_data["data"] = $output_array;
				$this->set_response($pass_data, REST_Controller::HTTP_OK);
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
