<?php 
class GetAllRoles_model extends CI_Model {
	
	/* Get All Roles */
	public function Get_All_Roles(){
		$this->db->select('`id`, `name`');
		$this->db->from('`com_user_roles`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}