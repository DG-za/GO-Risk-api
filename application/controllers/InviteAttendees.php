<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class InviteAttendees extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 28-09-2019
	*  Description : A controller contain SaveUser related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('InviteAttendees_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		$message = 'Required field(s) user_id,email is missing or empty';
		$user_id = $this->post('user_id');
		$email = $this->post('email');
		$serverLink = $this->post('serverLink');
		if(isset($email) &&   isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$Check_Availability_Result = $this->InviteAttendees_model->Check_User_Availability($email);
				if($Check_Availability_Result==0){
					$Insert_Array = array(
						"`email`" => $email,
						"`date`" => date('Y-m-d'),
						"`isexpiry`" => 0,
					);
					$Insert_saveUser_Result = $this->InviteAttendees_model->Insert_User($Insert_Array);
					$token['id'] = $Insert_saveUser_Result;
					$token['email'] = $email;
					$token['user_role'] = 4;
					$AToken = JWT::encode($token, $this->config->item('jwt_key'));
					$link = $serverLink."/attendees-registration/".$AToken;
					$subject = "Invitation: Maturity Assessment";
					$message = "<p>Hi,</p>";
					$message .= "<p>You have been invited to complete a Maturity Assessment. Please click on the activation link below to complete your registration.</p>";
					$message .= "<a href='".$link."' target='_blank'>Create Account</a>";
					$message .="<p>Kind Regards,<br/>4Xcellence Solutions</p>";
					$this->InviteAttendees_model->sendMail($email,$subject,$message);
					if($Insert_saveUser_Result > 0){
						$data = [
							"email" => $email,
							"date" => date('Y-m-d'),
							"isexpiry" => 0,
							"id'"   => $Insert_saveUser_Result
						];
						$Pass_Data["data"][] = $data;
						$inserted = ['status' => "true","statuscode" => 200,'response' => $Pass_Data];
						$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
					}else{
						$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"User not Inserted"];
						$this->set_response($not_inserted, REST_Controller::HTTP_OK);
					}
				}else{
					$not_available = ['status' => "true","statuscode" => 200,'response' =>"Email ID already Invited."];
					$this->set_response($not_available, REST_Controller::HTTP_OK);
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
	public function statusUpdate_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,email,firstname,lastname,role,password is missing or empty';
		
		$id = $this->post('id');
		
		if(isset($id)){
			$headers = $this->input->request_headers();
			$Update_InviteStatus_Result = $this->InviteAttendees_model->Update_InviteStatus($id);
			$Pass_Data["data"][] = $Update_InviteStatus_Result;
			$inserted = ['status' => "true","statuscode" => 200,'response' => $Pass_Data];
			$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
		}else{
			$not_inserted = ['status' => "true","statuscode" => 200,'response' =>"User not Inserted"];
		}
	}
	public function GetExpiredStatus_post(){
		$id = $this->post('id');
		$result = $this->InviteAttendees_model->GetExpiredStatus($id);
		$Pass_Data["data"][] =$result;
		$inserted = ['status' => "true","statuscode" => 200,'response' => $Pass_Data];
		$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
	}
}