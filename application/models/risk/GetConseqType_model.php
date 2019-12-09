<?php 
class GetConseqType_model extends CI_Model {
	
	/* Get Conseq Type */
	public function get_Conseq_Type(){
		$this->db->select('`id`,`name`');
		$this->db->from('`risk_conseq_type`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}