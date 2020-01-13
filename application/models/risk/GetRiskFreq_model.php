<?php 
class GetRiskFreq_model extends CI_Model {
	
	/* Get Risk Freq */
	public function get_Risk_Freq(){
		$this->db->select('`id`,`name`,`level`');
		$this->db->from('`risk_event_freq`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}