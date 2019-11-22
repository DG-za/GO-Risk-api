<?php 
class GetExposureMeta_modal extends CI_Model {
	
	/* Get Exposure Meta */
	public function get_Exposure_Meta($risk_conseq_type){
		$whereArr=array(
			"risk_conseq_type" => $risk_conseq_type
		);
		$this->db->select('*');
		$this->db->from('`risk_exposure_meta`');
		$this->db->where($whereArr);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}