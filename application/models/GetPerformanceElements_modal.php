<?php 
class GetPerformanceElements_modal extends CI_Model {
	
	/* Get All Performances_Elements */
	public function All_Performances_Elements(){
		$this->db->select("`id`,`name`");
		$this->db->from("`performance_elements`");
		$this->db->order_by("`sequence`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}