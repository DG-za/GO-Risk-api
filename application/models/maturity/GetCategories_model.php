<?php 
class GetCategories_model extends CI_Model {
	
	/* Get All Category */
	public function All_Category(){
		$this->db->select("`id`,`name`,`byline`,`image`");
		$this->db->from("`mat_category`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}