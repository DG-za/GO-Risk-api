<?php 
class GetAllRoles_modal extends CI_Model {
	
	/* Get All Roles */
	public function Get_All_Roles(){
		$this->db->select('`id`, `name`');
		$this->db->from('`user_roles`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}