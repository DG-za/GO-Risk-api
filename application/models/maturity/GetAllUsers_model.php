<?php 
class GetAllUsers_model extends CI_Model {
	
	/* Get All Users */
	public function getAllUsers_function(){
		$this->db->select("`id`,`email`,`firstname`,`lastname`,`role`,`password`");
		$this->db->from("`com_user`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	public function getUsers_function(){
		$this->db->select("`id`,`email`,`firstname`,`lastname`,`role`");
		$this->db->where("`role` !="  , 'admin');
		$this->db->from("`com_user`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	public function getSessionUsers_function($selectedSessionId){
		$this->db->select("user");
		$this->db->where("`id` "  , $selectedSessionId);
		$this->db->from("`mat_session`");
		$query_result = $this->db->get();
		return $query_result->row();
	}

	
}