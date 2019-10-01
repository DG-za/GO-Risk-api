<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetDesiredByElement extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 25-09-2019
	*  Description : A controller contain GetDesiredByElement related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('GetDesiredByElement_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,element_id is missing or empty';
		$user_id = $this->post('user_id');
		$Element_ID = $this->post('element_id');
		if(isset($user_id) && isset($Element_ID)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$All_Desired = $this->GetDesiredByElement_modal->Get_Desired_by_Element_ID($Element_ID);
				$Pass_Data = array();
				if(!empty($All_Desired)){
					foreach($All_Desired as $key => $value){
						$merge_array[0]['name'] = 'resilient';
						$merge_array[0]['value'] = $value->n3;
						$merge_array[1]['name'] = 'proactive';
						$merge_array[1]['value'] = $value->n2;
						$merge_array[2]['name'] = 'compliant';
						$merge_array[2]['value'] = $value->n1;
					}
					$Pass_Data["data"][] = $merge_array;
					$valid = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				}else{
					$this->set_response($no_found, REST_Controller::HTTP_OK);
				}
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