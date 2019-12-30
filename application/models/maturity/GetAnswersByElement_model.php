<?php 
class GetAnswersByElement_model extends CI_Model {
	
	/* Get All Answer By Element_ID */
	public function Get_Answer_by_Element_ID($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`" => $selectedSessionId,
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}
		
		$this->db->select("`question`,SUM(`answer`=1) AS `n1`,SUM(`answer`=2) AS `n2`,SUM(`answer`=3) AS `n3`,SUM(`answer`=4) AS `n4`,COUNT(*) AS `total`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`question`");
		$this->db->order_by("`question`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Question By Element_ID */
	public function Get_Question_by_Element_ID($Element_ID){
		
		$where_Array = array(
			"`element`" => $Element_ID
		);
		
		$this->db->select("`id`");
		$this->db->from("`mat_questions`");
		$this->db->where($where_Array);
		$this->db->order_by("`id`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}