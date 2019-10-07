<?php 
class Auth_model extends CI_Model {

   /*check user login*/

    public function user_login($username,$password) {
	    $this->db->where(['email'=>$username,'password'=>md5($password)]);      
	    $query = $this->db->get('user');	   
	    if($this->db->affected_rows() > 0){
	         return  $query->row();
	    }
    }

    /*function sendMail()
    {
        $config = Array(
      'protocol' => 'smtp',
      'smtp_host' => 'smtp.gmail.com',
      'smtp_port' => 465,
      'smtp_user' => 'dv.sparkle016@gmail.com', // change it to yours
      'smtp_pass' => 'Sparkle2#', // change it to yours
      'mailtype' => 'html',
      'charset' => 'iso-8859-1',
      'wordwrap' => TRUE
    );

            $message = 'welcome';
            $this->load->library('email', $config);
          $this->email->set_newline("\r\n");
          $this->email->from('dv.sparkle016@gmail.com'); // change it to yours
          $this->email->to('dv.sparkle016@gmail.com');// change it to yours
          $this->email->subject('Resume from JobsBuddy for your Job posting');
          $this->email->message($message);
          if($this->email->send())
         {
          echo 'Email sent.';
         }
         else
        {
         show_error($this->email->print_debugger());
        }

    }*/

    /*log session data*/

    public function session_log($data){

        $this->db->insert('ci_sessions',$data);

    }


	/* That function will check on each & every request of the API*/

    public function check_token($userID,$token){

       $this->db->where('token',$token);

       $this->db->where('user_id',$userID);

       $res = $this->db->get('ci_sessions');

       if($this->db->affected_rows() > 0) {

        return TRUE;

      } 

    } 
   
}

