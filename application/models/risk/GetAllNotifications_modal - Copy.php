<?php 
class GetAllRisks_modal extends CI_Model {
	
	/* Get All Risks */
	public function Get_All_Risks(){
		$this->db->select('*');
		$this->db->from('`risk`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}