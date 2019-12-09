<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveActionsVictory extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 27-09-2019
	*  Description : A controller contain SaveActionsVictory related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/SaveActionsVictory_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		$message = 'Required field(s) user_id,element,victory is missing or empty';
		$user_id = $this->post('user_id');
		//$Element_ID = $this->post('element_id');
		$element = $this->post('element');
		$teammembers = json_encode($this->post('teammembers'));
		$performance_elements = $this->post('performance_elements') ;
		$focusareaname= $this->post('focusareaname');
		$focusareaowner=$this->post('focusareaowner');
		$victory = $this->post('victory');  
		
		if(isset($user_id) && isset($element) && isset($victory)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Replace_Victory_Array = array(
					"`element`" => $element,
					"`definition`" => $victory,
					"`teammembers`" => $teammembers,
					"`performance_elements`" => $performance_elements,
					"`focusareaname`" => $focusareaname,
					"`focusareaowner`" => $focusareaowner,


				);
				$Replace_Victory_Result = $this->SaveActionsVictory_model->Replace_Action_Victory($Replace_Victory_Array);
				if($Replace_Victory_Result){
					$Pass_Data["data"]['insertId'] = $Replace_Victory_Result;
					$Replaced = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
					$this->set_response($Replaced, REST_Controller::HTTP_OK);
				}else{
					$Not_Replaced = ['status' => "true","statuscode" => 200,'response' =>"Action Victory Not Replaced."];
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