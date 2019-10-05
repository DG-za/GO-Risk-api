<?php 
class InviteAttendees_modal extends CI_Model {
	
	/* Insert User */
	public function Insert_User($Insert_Array){
		$result = $this->db->insert("`inviteattendees`",$Insert_Array);
		return $this->db->insert_id();
	}
	public function sendMail($emaila,$subject,$messages)
    {
      
       $config = Array(
           'protocol' => 'smtp',
           'smtp_host' => 'ssl://smtp.gmail.com',
           'smtp_port' => 465,
           'smtp_user' => 'mt.sparkle031@gmail.com',
           'smtp_pass' => 'sparkle1#',
           'smtp_timeout' => '4',
           'mailtype'  => 'html',
           'charset'   => 'iso-8859-1'
       );
       $this->load->library('email', $config);
       $this->email->set_newline("\r\n");
       $from_email = "mt.sparkle031@gmail.com";
       $this->email->from($from_email, 'she-excellence-app');
       $this->email->to($emaila);
       $this->email->subject($subject);
       $message = $messages;
       $this->email->message($message);
       $this->email->send();
    }
    public function Update_InviteStatus($id)
   {  
      $this->db->where('id', $id);
      if($this->db->update('inviteattendees', array('isexpiry' => 1))){
         return true;
       }else{
         return false;
       }
   } 
   public function GetExpiredStatus($id)
   {
     $this->db->select('isexpiry');
     $this->db->where('id', $id);
     $query = $this->db->get('inviteattendees');
     $query = $query->row();
     return $query->isexpiry;
   }
}