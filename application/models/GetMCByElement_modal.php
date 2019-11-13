<?php 
class GetMCByElement_modal extends CI_Model {

	/* Get All `answer_mc` by Elements_ID */
	public function Get_Structured_Answers_By_Element($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);

		$this->db->select("`answer`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`answer_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` */
	public function Get_Total_Answers_By_Element($Element_ID){
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