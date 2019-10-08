<?php 
class GetAllUsers_modal extends CI_Model {
	
	/* Get All Users */
	public function getAllUsers_function(){
		$this->db->select("`id`,`email`,`firstname`,`lastname`,`role`,`password`");
		$this->db->from("`user`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	public function getUsers_function(){
		$this->db->select("`id`,`email`,`firstname`,`lastname`,`role`");
		$this->db->where("`role` !="  , 'admin');
		$this->db->from("`user`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}