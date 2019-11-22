<?php 
class GetEventExposure_modal extends CI_Model {
	
	/* Get Event Exposure */
	public function get_Event_Exposure(){
		$this->db->select('`id`,`duration`,`multiplier`');
		$this->db->from('`event_exposure_duration`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}