<?php 
class GetEventHistoricFreq_modal extends CI_Model {
	
	/* Get Event Historic Freq */
	public function get_Event_Historic_Freq(){
		$this->db->select('`id`,`frequency`,`level`');
		$this->db->from('`event_historic_freq`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}