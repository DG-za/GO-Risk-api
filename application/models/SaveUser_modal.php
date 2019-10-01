<?php 
class SaveUser_modal extends CI_Model {
	
	/* Insert User */
	public function Insert_User($Insert_Array){
		$result = $this->db->insert("`user`",$Insert_Array);
		return $this->db->insert_id();
	}
	/* Check User Availability */
	public function Check_User_Availability($email){
		$this->db->where("`email`",$email);
		$result = $this->db->get("`user`")->num_rows();
		return $result;
	}
}