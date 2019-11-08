<?php
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
}
