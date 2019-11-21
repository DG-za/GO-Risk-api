<?php 
class GetHazards_modal extends CI_Model {
	
	/* Get Hazards */
	public function get_Hazards(){
		$this->db->select('*');
		$this->db->from('`control_hazard`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}