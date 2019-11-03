<?php 
class GetPerformanceMCByElement_modal extends CI_Model {
	
	/* Get All Answer MC By Element_ID */
	public function Get_Structured_Performance_Answers_by_Element($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`answer`, count(`answer`) as `count`, sum(`answer`) as `sum`");
		// $this->db->select("`answer`,count(*) as `num`");
		$this->db->from("`performance_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`answer`");
		$this->db->order_by("`answer`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Total Answers By Element_ID */
	public function Get_Total_Performance_Answers_by_Element($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`performance_mc`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Performance Quetion ID */
	public function Get_Performance_Quetion_ID(){
		$this->db->select("`id`");
		$this->db->from("`performance`");
		$this->db->order_by("`id`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}