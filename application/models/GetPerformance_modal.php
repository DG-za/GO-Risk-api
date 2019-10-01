<?php 
class GetPerformance_modal extends CI_Model {
	
	/* Get All Performance */
	public function All_Performance(){
		$this->db->select("`id`,`question`,`poor`,`mediocre`,`good`,`excellent`");
		$this->db->from("`performance`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}