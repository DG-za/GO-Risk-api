
<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class ActionOperation extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 09-10-2019
	*  Description : A controller contain Action Operation related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('ActionOperation_modal');
	}
	
	public function index_post(){
		echo "call";
	}
	public function getAllActionvictory_post()
    {
        
        $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
        $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
        $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
        $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
        
        $message = 'Required field(s) user_id is missing or empty';
        $user_id = $this->post('user_id');
    
        $victory_id=$this->post('victory_id');
                        
        if(isset($user_id) ){
            $headers = $this->input->request_headers();
            $token_status = check_token($user_id,$headers['Authorization']);
            
            if($token_status == TRUE){
                
                $Insert_saveQuestion_Result = $this->ActionOperation_modal->getAllActionvictory();
                if($Insert_saveQuestion_Result > 0){
                    
                    $Pass_Data["data"][] = $Insert_saveQuestion_Result;
                    $inserted = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
                    $this->set_response($inserted, REST_Controller::HTTP_OK);
                }else{
                    $not_inserted = ['status' => "true","statuscode" => 200,'response' =>"Save Element not Inserted"];
                    $this->set_response($not_inserted, REST_Controller::HTTP_OK);
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
    public function getOneActionvictory_post()
    {
            
        $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
        $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
        $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
        $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
        
        $message = 'Required field(s) user_id,victory_id is missing or empty';
        $user_id = $this->post('user_id');
    
        $victory_id=$this->post('victory_id');
                        
        if(isset($user_id) && isset($victory_id)){
            $headers = $this->input->request_headers();
            $token_status = check_token($user_id,$headers['Authorization']);
            
            if($token_status == TRUE){
                
                $Insert_saveQuestion_Result = $this->ActionOperation_modal->getOneActionvictory($victory_id);
                if($Insert_saveQuestion_Result > 0){
                    
                    $Pass_Data["data"][] = $Insert_saveQuestion_Result;
                    $inserted = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
                    $this->set_response($inserted, REST_Controller::HTTP_OK);
                }else{
                    $not_inserted = ['status' => "true","statuscode" => 200,'response' =>"Save Element not Inserted"];
                    $this->set_response($not_inserted, REST_Controller::HTTP_OK);
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