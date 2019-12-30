<?php 
class GetAllSessions_model extends CI_Model {
	
	/* getAllSessions */
	public function getAllSessions_function($user_id){
		$this->db->select("*");
		$this->db->from("`mat_session`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
}