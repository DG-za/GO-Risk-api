<?php 
class GetControlsCheck_model extends CI_Model {
	
	/* Get Controls Check */
	public function get_Controls_Check(){
		$this->db->select('*');
		$this->db->from('`risk_control_check`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}