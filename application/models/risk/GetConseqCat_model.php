<?php 
class GetConseqCat_model extends CI_Model {
	
	/* Get Conseq Cat */
	public function Get_Conseq_Cat(){
		$this->db->select('`id`,`name`');
		$this->db->from('`risk_conseq_cat`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}
