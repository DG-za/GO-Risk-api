<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveActionsMilestone extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 27-09-2019
	*  Description : A controller contain SaveActionsMilestone related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('SaveActionsMilestone_modal');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,element,milestone,responsible_person,start_date,end_date,comment,status is missing or empty';
		$user_id = $this->post('user_id');
		$element = $this->post('element');
		$milestone = $this->post('milestone');  
		$responsible_person = json_encode($this->post('responsible_person'));  
		$start_date = $this->post('start_date');  
		$end_date = $this->post('end_date');  
		$comment = $this->post('comment');
		$status = $this->post('status'); 
		$victory1 = $this->post('victoryId');
		if(isset($user_id) && isset($element) && isset($milestone) && isset($responsible_person) && isset($start_date) && isset($end_date) && isset($comment) && isset($status)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Replace_Actions_Milestone_Array = array(
					"`element`" => $element,
					"`milestone`" => $milestone,
					"`responsible_person`" => $responsible_person,
					"`start_date`" => $start_date,
					"`end_date`" => $end_date,
					"`comment`" => $comment,
					"`status`" => $status,
					"`victory`" => $victory1
				);
				$Replace_Actions_Milestone_Result = $this->SaveActionsMilestone_modal->Replace_Actions_Milestone($Replace_Actions_Milestone_Array);
				if($Replace_Actions_Milestone_Result){
					echo "Success";
				}else{
					$Not_Replaced = ['status' => "true","statuscode" => 200,'response' =>"Action Milestone Not Replace"];
					$this->set_response($Not_Replaced, REST_Controller::HTTP_OK);
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