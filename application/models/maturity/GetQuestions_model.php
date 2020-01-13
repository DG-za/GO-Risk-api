<?php 
class GetQuestions_model extends CI_Model {
	
	/* Get All Quetions By Element_ID */
	public function Get_Quetions_by_Element_ID($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`id`,`element`,`question`,`reactive`,`compliant`,`proactive`,`resilient`,`sequence`");
		$this->db->from("`mat_questions`");
		$this->db->order_by("sequence","ASC");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}