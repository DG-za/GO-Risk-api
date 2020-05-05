<?php 
class GetUnwantedEvent_model extends CI_Model {
	
	/* Get Hazards */
	public function get_UnwantedEvents(){
		$this->db->select('*');
		$this->db->from('`risk_unwanted_event`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}
