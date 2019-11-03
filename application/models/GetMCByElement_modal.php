<?php 
class GetMCByElement_modal extends CI_Model {
	
	/* Get All Answers By Element_ID */
	public function Get_Structured_Answers_by_Element($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`answer`, count(`answer`) as `count`, sum(`answer`) as `sum`");
		// $this->db->select("`answer`,count(*) as `count`");
		$this->db->from("`answer_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`answer`");
		$this->db->order_by("`answer`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Total Answers By Element_ID */
	public function Get_Total_Answers_by_Element($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`answer_mc`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}