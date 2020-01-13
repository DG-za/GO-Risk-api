<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SaveSession extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 27-09-2019
	*  Description : A controller contain SaveDesired related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/SaveSession_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,jsonSession is missing or empty';
		$user_id = $this->post('user_id');
		$jsonSession = $this->post('jsonSession');
		$site_url = $this->post('site_url');

		if(isset($user_id) && !empty($user_id) && isset($jsonSession) && !empty($jsonSession)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			if($token_status == TRUE){
				$session_users =array();
				$session_users = json_decode($jsonSession["session_users"]);
				//$more_users = explode(" ", $jsonSession["more_users"]);
				$more_users = $jsonSession["more_users"];
				$sessionUsers="";
				if(isset($jsonSession["session_id"])){
					$sessionUsers = $this->SaveSession_model->get_session_user_id($jsonSession["session_id"]);
					$sessionUsers = $sessionUsers->user;
				}	
				$Insert_Session_Result = $this->SaveSession_model->Insert_Update_Session($jsonSession);
				if($Insert_Session_Result){
					foreach ($session_users as $user){
						if(!in_array($user, explode(",", $sessionUsers))){
							$userData = $this->SaveSession_model->get_user_details_by_id($user);
							if(isset($userData) && !empty($userData)){
								$query = $this->db->get_where('com_email_template',array('type'=>'session_notification'));
								if($query->num_rows() > 0){
									$result = $query->row_array();
									$subject=$result['subject'];
									$array = array('{{session_name}}');
									$replace = array($jsonSession['session_name']);
									$subject = str_replace($array,$replace,$subject);
									$user_email=$userData->email;
									$body="<p>".$result['header']."<p>";
									$body.="<p>".$result['body']."<p>";
									$body.="<p>".$result['footer']."<p>";
									$array = array('{{session_name}}','{{first_name}}','{{last_name}}','{{login_url}}');
									$replace = array($jsonSession['session_name'],$userData->firstname,$userData->lastname,$site_url);
									$body = str_replace($array,$replace,$body);
									$email_status = send_email_function($subject,$user_email,$body);
								}
							}
						}
					}
					$link="";
					foreach ($more_users as $user_email){
						$token['session_id'] = $Insert_Session_Result;
						$token['email'] = $user_email;
						$token['id'] = $user_id;
						$AToken = JWT::encode($token, $this->config->item('jwt_key'));
						$link = $site_url."/attendees-registration/".$AToken;
						$query = $this->db->get_where('com_email_template',array('type'=>'session_invitation_signup'));
						if($query->num_rows() > 0){
							$result = $query->row_array();
							$subject=$result['subject'];
							$array = array('{{session_name}}');
							$replace = array($jsonSession['session_name']);
							$subject = str_replace($array,$replace,$subject);
							$user_email=trim($user_email);
							$body="<p>".$result['header']."<p>";
							$body.="<p>".$result['body']."<p>";
							$body.="<p>".$result['footer']."<p>";
							$array = array('{{session_name}}','{{email}}','{{session_signup_url}}');
							$replace = array($jsonSession['session_name'],$user_email,$link);
							$body = str_replace($array,$replace,$body);
							$email_status = send_email_function($subject,$user_email,$body);
						}
					}

					$data = [
						'status' => "true",
						'inserted_id' => $Insert_Session_Result
					];
					$Pass_Data["data"] = $data;
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				}else{
					$Not_Inserted = ['status' => "false","statuscode" => 200,'response' =>"Session Not Inserted."];
					$Pass_Data["data"] = $Not_Inserted;
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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