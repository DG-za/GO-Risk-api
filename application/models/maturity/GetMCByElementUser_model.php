<?php 
class GetMCByElementUser_model extends CI_Model {
	
	/* Get All Answer MC By Element_ID */
	public function Get_Answer_MC_by_Element_ID_and_User_ID($Element_ID,$User_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`user`" => $User_ID,
				"`session_id`" => $selectedSessionId
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
				"`user`" => $User_ID,
			);
		}
		
		
		$this->db->select("*");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($where_Array);
		$this->db->order_by("`answer`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}