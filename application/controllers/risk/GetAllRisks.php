<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetAllRisks extends REST_Controller {
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
    $this->load->model('risk/GetAllRisks_model');
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
        $results = $this->GetAllRisks_model->Get_All_Risks();
        if(!empty($results)){
          foreach ($results as $key => $value) {
            $merge_Array[$key] =$value;
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

$risks = [];
$sql = "SELECT * FROM risk";

if($result = mysqli_query($con,$sql))

{

  $cr = 0;
  while($row = mysqli_fetch_assoc($result))
  {
    $risks[$cr]['id']      = $row['id'];
    $risks[$cr]['company'] = $row['company'];
    $risks[$cr]['geo_area'] = $row['geo_area'];
    $risks[$cr]['process_step'] = $row['process_step'];
    $risks[$cr]['external_factor'] = $row['external_factor'];
    $risks[$cr]['hazard_desc'] = $row['hazard_desc'];
    $risks[$cr]['owner'] = $row['owner'];
    $risks[$cr]['cat'] = $row['cat'];
    $risks[$cr]['risk_desc'] = $row['risk_desc'];
    $risks[$cr]['type'] = $row['type'];
    $risks[$cr]['conseq'] = $row['conseq'];
    $risks[$cr]['exposure_count'] = $row['exposure_count'];
    $risks[$cr]['exposure_freq'] = $row['exposure_freq'];
    $risks[$cr]['exposure_duration'] = $row['exposure_duration'];
    $risks[$cr]['controls_prevent'] = $row['controls_prevent'];
    $risks[$cr]['controls_corrective'] = $row['controls_corrective'];
    $risks[$cr]['historic_conseq'] = $row['historic_conseq'];
    $risks[$cr]['historic_desc'] = $row['historic_desc'];
    $risks[$cr]['historic_freq'] = $row['historic_freq'];
    $cr++;
  } 
  echo json_encode(['data'=>$risks]);
}
else
{
  http_response_code(404);
}*/

?>