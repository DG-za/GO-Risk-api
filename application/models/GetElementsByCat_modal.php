<?php 
class GetElementsByCat_modal extends CI_Model {
	
	/* Get Elements By Category */
	public function getElementsByCat_function($Cat_ID){
		$where_Array = array(
			"`cat`" => $Cat_ID,
		);
		$this->db->from("`elements`");
		$this->db->where($where_Array);
		$this->db->order_by("`sequence`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}