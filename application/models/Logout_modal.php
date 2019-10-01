<?php 
class Logout_modal extends CI_Model {
	
	/* Delete Tokens Function */
	public function Delete_Tokens($user_id){
		$data_Delete = array(
			"`user_id`" => $user_id,
		);
		$result = $this->db->delete("`ci_sessions`",$data_Delete);
		return $result;
	}
}