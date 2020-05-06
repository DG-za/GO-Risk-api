<?php 
class GetRiskById_model extends CI_Model {
	
	/* Get Risk By Id */
	public function Get_Risk_By_ID($riskId){
		$this->db->select('*');
		$this->db->from('`risk`');
		$this->db->where('`id`', $riskId);
		$query_result = $this->db->get();

		return $query_result->row();
	}
}
