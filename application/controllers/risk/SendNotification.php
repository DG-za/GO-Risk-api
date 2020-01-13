<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class SendNotification extends REST_Controller {
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
    $this->load->model('risk/SendNotification_model');
  }
  
  public function index_post(){
    $valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
    $no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
    $invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
    $not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
    
    $message = 'Required field(s) user_id,company,hazard,risk is missing or empty';
    $user_id = $this->post('user_id');
    $manager = $this->post('manager');

    if(isset($user_id) && !empty($user_id) && isset($manager) && !empty($manager)){
      $headers = $this->input->request_headers();
      $token_status = check_token($user_id,$headers['Authorization']);
      
      if($token_status == TRUE){
      	$merge_arr=array();
        $results = $this->SendNotification_model->get_Users($manager);
        if(!empty($results)){
	        $merge_arr['id']= $results[0]->id;
	        $merge_arr['firstname']= $results[0]->firstname;
	        $merge_arr['email']= $results[0]->email;
          $Pass_Data["data"] = $merge_arr;
          $Inserted = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
          $this->set_response($Inserted, REST_Controller::HTTP_OK);
          //send_notification($results[0]->firstname, $results[0]->email);
        }else{
          $Not_Inserted = ['status' => "true","statuscode" => 200,'response' =>"Record Not Found."];
          $this->set_response($Not_Inserted, REST_Controller::HTTP_OK);
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
 public function send_notification($user, $email)
{
	try {
		include "smtp-config.php";
		include "template-comment-notification.php";
		$mail = new PHPMailer\PHPMailer\PHPMailer();
		//Server settings
		$mail->SMTPDebug = 2;                                       // Enable verbose debug output
		$mail->isSMTP();                                            // Set mailer to use SMTP
		$mail->Host       = $host;  																// Specify main and backup SMTP servers
		$mail->SMTPAuth   = true;                                   // Enable SMTP authentication
		$mail->Username   = $username;                    					 // SMTP username
		$mail->Password   = $password;                               // SMTP password
		$mail->SMTPSecure = $security;                                  // Enable TLS encryption, `ssl` also accepted
		$mail->Port       = $port;                                    // TCP port to connect to

		//Recipients
		$mail->setFrom('info@digitalshepherd.co.za', 'AEIC System');
		//$mail->addAddress('brenden@morithi.co.za', "Brenden");     // Add a recipient
		$mail->addAddress($email, $user);     // Add a recipient
		$mail->addReplyTo('info@digitalshepherd.co.za', 'AEIC System');

		// Content
		$mail->isHTML(true);                                  // Set email format to HTML
		$mail->Subject = 'Your action is required';
		$mail->Body    = get_body($user);
		$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

		$mail->send();
		//echo 'Message has been sent';
	} catch (Exception $e) {
		//echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
	}
}
}


/*
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE, PUT');
header('Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding');
//*********************************************************
//Sending all the emails
//*********************************************************

require("PHPMailer/PHPMailer.php");
require("PHPMailer/SMTP.php");
//require("PHPMailer/Exception.php");
require 'connect.php';
$postdata = file_get_contents("php://input");
$userid = '';
$firstname = '';
$email = '';
$user = [];
if (isset($postdata) && !empty($postdata)) {
	$request = json_decode($postdata);

	$manager = mysqli_real_escape_string($con, (int)$request->data->manager);
	//$manager = '2';
	$sql = "SELECT * FROM users  WHERE id='$manager'";

	if ($result = mysqli_query($con, $sql)) {

		$cr = 0;
		while ($row = mysqli_fetch_assoc($result)) {
			$user[$cr]['id']    = $row['id'];
			$user[$cr]['firstname']    = $row['firstname'];
			$firstname = $row['firstname'];
			$email = $row['email'];
			$user[$cr]['email'] = $row['email'];
			$cr++;
		}

		echo json_encode(['data' => $user]);
		send_notification($firstname, $email);
	} else {
		http_response_code(404);
	}
}
function send_notification($user, $email)
{
	//echo $user;
	//echo $email;
	//function send_notification() {
	try {
		include "smtp-config.php";
		include "template-comment-notification.php";
		$mail = new PHPMailer\PHPMailer\PHPMailer();
		//Server settings
		$mail->SMTPDebug = 2;                                       // Enable verbose debug output
		$mail->isSMTP();                                            // Set mailer to use SMTP
		$mail->Host       = $host;  																// Specify main and backup SMTP servers
		$mail->SMTPAuth   = true;                                   // Enable SMTP authentication
		$mail->Username   = $username;                    					 // SMTP username
		$mail->Password   = $password;                               // SMTP password
		$mail->SMTPSecure = $security;                                  // Enable TLS encryption, `ssl` also accepted
		$mail->Port       = $port;                                    // TCP port to connect to

		//Recipients
		$mail->setFrom('info@digitalshepherd.co.za', 'AEIC System');
		//$mail->addAddress('brenden@morithi.co.za', "Brenden");     // Add a recipient
		$mail->addAddress($email, $user);     // Add a recipient
		$mail->addReplyTo('info@digitalshepherd.co.za', 'AEIC System');

		// Content
		$mail->isHTML(true);                                  // Set email format to HTML
		$mail->Subject = 'Your action is required';
		$mail->Body    = get_body($user);
		$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

		$mail->send();
		//echo 'Message has been sent';
	} catch (Exception $e) {
		//echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
	}
}*/
