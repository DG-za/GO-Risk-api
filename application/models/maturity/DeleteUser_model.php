<?php 
class DeleteUser_model extends CI_Model {
	
	/* Delete User */
	public function deleteUser($userId){
		$data_Delete1 = array(
			"`id`" => $userId,
		);
		$data_Delete2 = array(
			"`user_id`" => $userId,
		);
		$this->db->delete("`com_ci_sessions`",$data_Delete2);
		$this->db->delete("`com_user`",$data_Delete1);
		if($this->db->affected_rows()){
			return true;
		}
	}
}	