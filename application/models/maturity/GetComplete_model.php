<?php 
class GetComplete_model extends CI_Model {
	
	/* Get Complete */
	public function getComplete_function($User_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`user`" => $User_ID,
				"`session_id`" => $selectedSessionId
			);
		}else{
			$where_Array = array(
				"`user`" => $User_ID,
			);
		}
		$this->db->select("`element`");
		$this->db->from("`mat_answer_complete`");
		$this->db->where($where_Array);
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}