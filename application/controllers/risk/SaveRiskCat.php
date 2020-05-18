<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class SaveRiskCat extends REST_Controller
{
	/***************************************************************
	 *  Project Name : 4Xcellence Solutions
	 *  Created By :
	 *  Created Date : 27-09-2019
	 *  Description : A controller contain SaveElement related methods
	 *  Modification History :
	 *
	 ***************************************************************/

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('check_token');
		$this->load->model('risk/SaveRiskCat_model');
	}

	public function index_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$message = 'Required field(s) user_id,risk_cat_name is missing or empty';
		$user_id = $this->post('user_id');
		$risk_cat_name = $this->post('risk_cat_name');
		if (isset($user_id) && isset($risk_cat_name)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {
				$Insert_Array = array(
					"`name`" => $risk_cat_name
				);
				$Insert_riskCat_Result = $this->SaveRiskCat_model->Insert_Risk_Cat($Insert_Array);
				if ($Insert_riskCat_Result > 0) {
					$data = array(
						'name' => $risk_cat_name,
						'id' => $Insert_riskCat_Result
					);
					$valid = ['status' => "true", "statuscode" => 200, 'response' => $data];
					$this->set_response($valid, REST_Controller::HTTP_OK);
				} else {
					$not_inserted = ['status' => "true", "statuscode" => 200, 'response' => "Save Element not Inserted"];
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
}
