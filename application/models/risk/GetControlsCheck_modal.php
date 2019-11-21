<?php 
class GetControlsCheck_modal extends CI_Model {
	
	/* Get Controls Check */
	public function get_Controls_Check(){
		$this->db->select('*');
		$this->db->from('`control_check`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}