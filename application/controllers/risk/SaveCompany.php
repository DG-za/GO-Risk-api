<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';

class SaveCompany extends REST_Controller
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
		$this->load->model('risk/SaveCompany_model');
	}

	public function index_post()
	{
		$valid = ['status' => "true", "statuscode" => 200, 'response' => "Token Valid"];
		$no_found = ['status' => "true", "statuscode" => 200, 'response' => "No Record Found"];
		$invalid = ['status' => "true", "statuscode" => 203, 'response' => "In-Valid token"];
		$not_found = ['status' => "true", "statuscode" => 404, 'response' => "Token not found"];

		$message = 'Required field(s) user_id,add_company_name is missing or empty';

		$user_id = $this->post('user_id');
		$add_company_name = $this->post('name');
		$parent_id = $this->post('parent');
		$workforce = $this->post('total_workforce');

		//print_r($this->post()); die;

		if (isset($user_id) && isset($add_company_name)) {
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id, $headers['Authorization']);

			if ($token_status == TRUE) {

				if (!$parent_id) $parent_id = Null;
				if (!$workforce) $workforce = Null;

				if ($this->post('id') != "") {
					$Update_Array = array(
						"`name`" => $add_company_name,
						"`parent`" => $parent_id,
						"`total_workforce`" => $workforce
					);
					$Company_Result = $this->SaveCompany_model->Update_Company($Update_Array, $this->post('id'));
				} else {
					$Insert_Array = array(
						"`name`" => $add_company_name,
						"`parent`" => $parent_id,
						"`total_workforce`" => $workforce
					);
					$Company_Result = $this->SaveCompany_model->Insert_Company($Insert_Array);
				}

				if ($Company_Result > 0) {
					$data = array(
						'name' => $add_company_name,
						'id' => $Company_Result
					);
					$valid = ['status' => "true", "statuscode" => 200, 'response' => $data];
					$this->set_response($valid, REST_Controller::HTTP_OK);
				} else {
					$not_inserted = ['status' => "true", "statuscode" => 200, 'response' => "Company not Inserted"];
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
