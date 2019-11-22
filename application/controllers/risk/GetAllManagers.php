<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetAllManagers extends REST_Controller {
  /***************************************************************
  *  Project Name : 4Xcellence Solutions
  *  Created By :   
  *  Created Date : 25-09-2019
  *  Description : A controller contain GetActionsByElement related methods
  *  Modification History :
  *  
  ***************************************************************/
  
  public function __construct() {
    parent::__construct();
    $this->load->helper('check_token');       
    $this->load->model('risk/GetAllManagers_modal');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    
    $message = 'Required field(s) user_id is missing or empty';
    $user_id = $this->post('user_id');
    if(isset($user_id) && !empty($user_id)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
        $merge_Array = array();
        $results = $this->GetAllManagers_modal->get_All_Managers();
        if(!empty($results)){
          foreach ($results as $key => $value) {
            $merge_Array[$key]['id']    = $value->id;
            $merge_Array[$key]['firstname'] = $value->firstname;
            $merge_Array[$key]['lastname'] = $value->lastname;
          }
        }
        $Pass_Data["data"] = $merge_Array;
        $this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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



/*header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
require 'connect.php';

$managers = [];
$sql = "SELECT id, firstname, lastname FROM users";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $managers[$cr]['id']    = $row['id'];
    $managers[$cr]['firstname'] = $row['firstname'];
    $managers[$cr]['lastname'] = $row['lastname'];
    $cr++;
  }
    
  echo json_encode(['data'=>$managers]);
}
else
{
  http_response_code(404);
}
*/
?>