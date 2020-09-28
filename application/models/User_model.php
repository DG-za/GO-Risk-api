<?php 
class User_model extends CI_Model {

   /* Fetch user details base on the email address */
   public function get_user_details_by_mail($user_email) {
      $this->db->where(['email'=>$user_email]);      
      $query = $this->db->get('com_user');
      if($this->db->affected_rows() > 0){
           return  $query->row();
      }
    }

	public function sendMail($email, $subject, $messages){
		$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'smtp.she-excellence.co.za',
			'smtp_port' => 587,
			'smtp_user' => 'noreply@she-excellence.co.za',
			'smtp_pass' => 'Crispworks123!',
			'smtp_timeout' => '4',
			'mailtype'  => 'html',
			'charset'   => 'iso-8859-1'
		);
		$from_email = "noreply@she-excellence.co.za";
		$message = $messages;

		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");
		$this->email->from($from_email, '4Xcellence Solutions');
		$this->email->to($email);
		$this->email->subject($subject);
		$this->email->message($message);
		$this->email->send();
	}


    public function set_user_password($user_id,$password){      
      $this->db->where(['id'=>$user_id]);
      $result = $this->db->update("com_user",array("password"=> md5($password)));
      if($this->db->affected_rows() > 0){
           return  $result;
      }     
    }
      
}

