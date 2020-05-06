<?php 
class GetAllRisks_model extends CI_Model {
	
	/* Get All Roles */
	public function Get_All_Risks(){
		$this->db->select('*');
		$this->db->from('`risk`');
		$query_result = $this->db->get();

		//$this->db->last_query();
		return $query_result->result();
	}
}
