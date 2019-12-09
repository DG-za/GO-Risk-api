<?php 
class GetRiskTable_model extends CI_Model {
	
	/* Get Risk Table */
	public function get_Risk_Table(){
		$this->db->select('`level`,`not_likely`,`slight`,`likely`,`highly_likely`,`expected`');
		$this->db->from('`risk_table`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}