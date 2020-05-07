<?php 
class GetControls_model extends CI_Model {
	
	/* Get Controls */
	public function get_Controls(){
		$this->db->select('*');
		$this->db->from('`risk_controls`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}
