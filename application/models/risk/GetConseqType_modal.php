<?php 
class GetConseqType_modal extends CI_Model {
	
	/* Get Conseq Type */
	public function get_Conseq_Type(){
		$this->db->select('`id`,`name`');
		$this->db->from('`conseq_type`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}