<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class CleanDataset extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 28-09-2019
	*  Description : A controller contain CleanDataset related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/CleanDataset_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$headers = $this->input->request_headers();
		$token_status = check_token($this->post('user_id'),$headers['Authorization']);
		
		if($token_status == TRUE){
			$Pass_Data = array();
			$answer_mc_Ids_Result = $this->CleanDataset_model->Get_All_answer_mc_MAX_ID();
			if(!empty($answer_mc_Ids_Result)){
				$Ignore_ID_Array = array();
				foreach($answer_mc_Ids_Result as $AMIR){
					$Ignore_ID_Array[] = $AMIR->Max_ID;
				}
				$answer_mc_Delete_Result = $this->CleanDataset_model->Delete_answer_mc_ID_Not_In($Ignore_ID_Array);
				if($answer_mc_Delete_Result){
					$Pass_Data["data"][] = "Answers Deleted Successfully";
				}else{
					$Pass_Data["data"][] = "Answers Not Deleted";
				}
			}
			
			$answer_desired_Ids_Result = $this->CleanDataset_model->Get_All_answer_desired_MAX_ID();
			if(!empty($answer_desired_Ids_Result)){
				$Ignore_ID_Array = array();
				foreach($answer_desired_Ids_Result as $ADIR){
					$Ignore_ID_Array[] = $ADIR->Max_ID;
				}
				$answer_desired_Delete_Result = $this->CleanDataset_model->Delete_answer_desired_ID_Not_In($Ignore_ID_Array);
				if($answer_desired_Delete_Result){
					$Pass_Data["data"][] = "Desired Answers Deleted Successfully";
				}else{
					$Pass_Data["data"][] = "Desired Answers Not Deleted";
				}
			}
			
			$answer_proof_Ids_Result = $this->CleanDataset_model->Get_All_answer_proof_MAX_ID();
			if(!empty($answer_proof_Ids_Result)){
				$Ignore_ID_Array = array();
				foreach($answer_proof_Ids_Result as $APIR){
					$Ignore_ID_Array[] = $APIR->Max_ID;
				}
				$answer_proof_Delete_Result = $this->CleanDataset_model->Delete_answer_proof_ID_Not_In($Ignore_ID_Array);
				if($answer_proof_Delete_Result){
					$Pass_Data["data"][] = "Answers Proof Deleted Successfully";
				}else{
					$Pass_Data["data"][] = "Answers Proof Not Deleted";
				}
			}
			
			$valid = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
			$this->set_response($valid, REST_Controller::HTTP_OK);
		}else if($token_status == FALSE){
			$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
		}else{
			$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
		}
	}
}