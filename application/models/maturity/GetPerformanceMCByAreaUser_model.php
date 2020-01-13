<?php 
class GetPerformanceMCByAreaUser_model extends CI_Model {
	
	/* Get All Answer MC By Element_ID And User_ID */
	public function Get_Performance_Answer_MC_by_Area_ID_and_User_ID($Element_ID,$user_id,$selectedSessionId){
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
		$this->db->select("*");
		$this->db->from("`mat_performance_mc`");
		$this->db->where($where_Array);
		$this->db->order_by("`answer`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}