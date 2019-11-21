<?php 
class GetRiskType_modal extends CI_Model {
	
	/* Get Risk Type */
	public function get_Risk_Type(){
		$this->db->select('`id`,`name`');
		$this->db->from('`risk_cat`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}