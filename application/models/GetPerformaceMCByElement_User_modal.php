<?php 
class GetPerformaceMCByElement_User_modal extends CI_Model {
	
	public function Get_Performace_Answer_MC_by_Element_ID_and_User_ID($Element_ID,$user_id){
		$where_Array = array(
			"`element`" => $Element_ID,
			"`user`" => $user_id,
		);
		
		$this->db->select("*");
		$this->db->from("`performance_mc`");
		$this->db->where($where_Array);
		$this->db->order_by("`answer`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}