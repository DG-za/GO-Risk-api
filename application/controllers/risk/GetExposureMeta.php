<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
class GetExposureMeta extends REST_Controller
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
		$this->load->model('risk/GetExposureMeta_model');
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
				$merge_Array = array();
				$meta_keys = array();
				$results = $this->GetExposureMeta_model->get_Exposure_Meta();
				if (!empty($results)) {
					$i = 0;
					foreach ($results as $key => $value) {
						array_push($meta_keys, $value->meta_key);
						$merge_Array['meta_values'][$i]['key'] = $value->meta_key;
						$merge_Array['meta_values'][$i]['values'] = json_decode($value->meta_value);
						$merge_Array['meta_values'][$i]['risk_conseq_type'] = $value->risk_conseq_type;
						$merge_Array['meta_values'][$i]['risk_exposure_type'] = $value->risk_exposure_type;
						$i++;
					}
				}
				$merge_Array['meta_keys'] = $meta_keys;
				$Pass_Data["data"] = $merge_Array;
				$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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
?>
