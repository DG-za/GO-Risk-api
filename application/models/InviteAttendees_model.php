<?php 
class InviteAttendees_model extends CI_Model {
	
	/* Insert User */
	public function Insert_User($Insert_Array){
		$result = $this->db->insert("`com_invite_attendees`",$Insert_Array);
		return $this->db->insert_id();
	}
	public function sendMail($emaila,$subject,$messages){
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
		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");
		$from_email = "noreply@she-excellence.co.za";
		$this->email->from($from_email, '4Xcellence Solutions');
		$this->email->to($emaila);
		$this->email->subject($subject);
		$message = $messages;
		$this->email->message($message);
		$this->email->send();
	}
  public function Update_InviteStatus($id){  
		$this->db->where('id', $id);
		if($this->db->update('com_invite_attendees', array('isexpiry' => 1))){
			return true;
		}else{
			return false;
		}
  } 
  public function GetExpiredStatus($id){
    $this->db->select('isexpiry');
    $this->db->where('id', $id);
    $query = $this->db->get('com_invite_attendees');
    $query = $query->row();
    return $query['isexpiry'];
  }
  public function Check_User_Availability($email='')
  {
  	$this->db->where("`email`",$email);
	$result = $this->db->get("`com_invite_attendees`")->num_rows();
	return $result;
  }
  public function Get_Default_Role_ID()
  {
  	$this->db->where("`name`","Default");
	$result = $this->db->get("`com_user_roles`")->row();
	return $result;
  }
}