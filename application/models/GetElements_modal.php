<?php 
class GetElements_modal extends CI_Model {
	
	/* Get All Elements */
	public function All_Elements(){
		$this->db->select("`id`,`cat`,`name`,`alt_sequence`");
		$this->db->from("`elements`");
		$this->db->order_by("`name`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
}