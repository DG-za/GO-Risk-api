<?php 
class GetComplete_modal extends CI_Model {
	
	/* Get Complete */
	public function getComplete_function($User_ID){
		$where_Array = array(
			"`user`" => $User_ID,
		);
		$this->db->select("`element`");
		$this->db->from("`answer_complete`");
		$this->db->where($where_Array);
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}