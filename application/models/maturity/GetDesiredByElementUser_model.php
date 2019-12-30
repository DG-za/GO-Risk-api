<?php 
class GetDesiredByElementUser_model extends CI_Model {
	
	/* Get All Desired By Element_ID */
	public function Get_Desired_by_Element_ID_User($Element_ID,$user_id,$assessment_type,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`user`" => $user_id,
				"`session_id`" => $selectedSessionId
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
				"`user`" => $user_id,
			);
		}
		
		
		$this->db->select("`element`,`desired`,SUM(`desired`=2) AS `n1`, SUM(`desired`=3) AS `n2`, SUM(`desired`=4) AS `n3`, COUNT(*) AS `total`");
		if($assessment_type == "practice"){
			$this->db->from("`mat_answer_desired`");
		}else{
			$this->db->from("`mat_performance_desired`");
		}
		$this->db->where($where_Array);
		$this->db->group_by("`element`");
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}