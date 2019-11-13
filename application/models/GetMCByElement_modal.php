<?php 
class GetMCByElement_modal extends CI_Model {

	/* Get All `answer_mc` by Elements_ID */
	public function Get_Structured_Answers_By_Element($ID){
		$this->db->select("`answer`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`answer_mc`");
		$this->db->like("`element`",$ID);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` */
	public function Get_Total_Answers_By_Element($ID){
		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`answer_mc`");
		$this->db->like("`element`",$ID);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}