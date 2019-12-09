<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveMC extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 28-09-2019
	*  Description : A controller contain SaveMC related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/SaveMC_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,user,element,question,answer is missing or empty';
		$user_id = $this->post('user');
		$user = $this->post('user');
		$element = $this->post('element');
		$question = $this->post('question');
		$answer = $this->post('answer');
		if(isset($user_id) && isset($element) && isset($question) && isset($answer)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				
				$Where_Array = array(
					"`user`" => $user,
					"`element`" => $element,
					"`question`" => $question,
				);
				$Get_saveMC_Result = $this->SaveMC_model->Get_saveMC($Where_Array);
				if(!empty($Get_saveMC_Result)){
					$r_user = $Get_saveMC_Result[0]->user;
					$r_element = $Get_saveMC_Result[0]->element;
					$r_question = $Get_saveMC_Result[0]->question;
					$r_answer = $Get_saveMC_Result[0]->answer;
					if($r_user == $user && $r_element == $element && $r_question == $question){
						$Data_Update = array(
							"`answer`" => $answer,
						);
						$Update_saveMC_Result = $this->SaveMC_model->Update_saveMC($Where_Array,$Data_Update);
						if($Update_saveMC_Result){
							$updated = ['status' => "true","statuscode" => 200,'response' =>"Save MC Updated Successfully"];
							$this->set_response($updated, REST_Controller::HTTP_OK);
						}else{
							$not_updated = ['status' => "true","statuscode" => 200,'response' =>"Save MC not Updated"];
							$this->set_response($not_updated, REST_Controller::HTTP_OK);
						}
					}
				}else{
					$Insert_Array = array(
						"`user`" => $user,
						"`element`" => $element,
						"`question`" => $question,
						"`answer`" => $answer,
					);
					$Insert_saveMC_Result = $this->SaveMC_model->Insert_saveMC($Insert_Array);
					if($Insert_saveMC_Result){
						$data = [
							'status' => "success"
						];
						$Pass_Data["data"] = $data;
						$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
					}else{
						$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"Save MC not Inserted"];
						$this->set_response($not_inserted, REST_Controller::HTTP_OK);
					}
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