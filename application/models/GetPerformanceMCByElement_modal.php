<?php 
class GetPerformanceMCByElement_modal extends CI_Model {
	
	/* Get All Answer MC By Element_ID */
	public function Get_Structured_Performance_Answers_By_Element($ID){
		$this->db->select("`answer`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`performance_mc`");
		// $this->db->like("`element`",$ID);
		$this->db->where("`element`",$ID);
		$this->db->order_by("answer", "asc");
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All perfromance answers by Elements_ID */
	public function Get_Total_Performance_Answers_By_Element($ID){
		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`performance_mc`");
		$this->db->like("`element`",$ID);
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