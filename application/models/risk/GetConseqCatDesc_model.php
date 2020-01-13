<?php 
class GetConseqCatDesc_model extends CI_Model {
	
	/* Get Conseq Cat Desc */
	public function get_Conseq_Cat_Desc(){
		$this->db->select('`conseq_cat`,`conseq_type`,`conseq_desc`');
		$this->db->from('`risk_conseq_cat_desc`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}