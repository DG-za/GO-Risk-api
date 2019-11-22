<?php 
class GetRiskCat_modal extends CI_Model {
	
	/* Get Exposure Type */
	public function get_Risk_Cat(){
		$this->db->select('*');
		$this->db->from('`risk_cat`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}