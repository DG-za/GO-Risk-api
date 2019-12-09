<?php 
class GetExposureType_model extends CI_Model {
	
	/* Get Exposure Type */
	public function get_Exposure_Type(){
		$this->db->select('*');
		$this->db->from('`risk_exposure_type`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}