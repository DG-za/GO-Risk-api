<?php 
class GetEventFreq_model extends CI_Model {
	
	/* Get Event Freq */
	public function get_Event_Freq(){
		$this->db->select('`id`,`name`,`level`');
		$this->db->from('`risk_event_freq`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}