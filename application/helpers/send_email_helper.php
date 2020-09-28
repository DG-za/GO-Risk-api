<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


/*common setting*/
function email_array(){
	$ci = get_instance();
	$config['protocol']   = $ci->config->item('protocol');
	$config['smtp_host']  = $ci->config->item('smtp_host');
	$config['smtp_port']  = $ci->config->item('smtp_port');
	$config['smtp_user']  = $ci->config->item('smtp_user');  
	$config['smtp_pass']  = $ci->config->item('smtp_pass');  
	$config['charset']    = $ci->config->item('charset');
	$config['mailtype']   = $ci->config->item('mailtype');
	$config['newline']    = $ci->config->item('newline');
	return $config;
}

/*forgot password email*/

function send_email_function($subject,$email,$body){
	$ci = get_instance();
	$ci->load->library('email');	
	$ci->load->database();
	$ci->email->initialize(email_array());					
	$ci->email->from('christo@crispworks.co.za', 'She Excellence App');
	$ci->email->to($email);
	$ci->email->subject($subject);
	$ci->email->message($body);
	
	if($ci->email->send()){
		return true;
	}else{
		return false;
	}	
}

function sendMail($subject,$email,$body){
	$ci = get_instance();

	$config = Array(
		'protocol' => 'smtp',
		'smtp_host' => 'smtp.she-excellence.co.za',
		'smtp_port' => 587,
		'smtp_user' => 'noreply@she-excellence.co.za',
		'smtp_pass' => 'Crispworks123!',
		'smtp_timeout' => '8',
		'mailtype'  => 'html',
		'charset'   => 'iso-8859-1'
	);
	$from_email = "noreply@she-excellence.co.za";
	$message = $body;

	$ci->load->library('email', $config);
	$ci->email->set_newline("\r\n");
	$ci->email->from($from_email, '4Xcellence Solutions');
	$ci->email->to($email);
	$ci->email->subject($subject);
	$ci->email->message($message);
	if($ci->email->send()){
		return true;
	}else{
		return false;
	}
}


/*function send_otp($type,$email,$data){
	$ci = get_instance();
	$ci->load->library('email');	
	$ci->load->database();
	$query = $ci->db->get_where('tbl_email_template',array('type'=>$type));
	if($query->num_rows() > 0){
		$result = $query->row_array();
		$array = array('{fullname}','{user_email}','{otp}');
		$replace = array($data['customer_name'],$data['email'],$data['otp']);
		$final = str_replace($array,$replace,$result['message_body']);
		$ci->email->initialize(email_array());					
		$ci->email->from('admin@catalog.com', 'Catalog App');
		$ci->email->to($email);
		$ci->email->subject($result['subject']);
		$ci->email->message($final);
		$ci->email->send();			           
	}else{

	}
}*/
