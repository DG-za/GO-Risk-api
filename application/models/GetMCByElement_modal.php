<?php 
class GetMCByElement_modal extends CI_Model {
	
	/* Get All Answer MC By Element_ID */
	public function Get_Answer_MC_by_Element_ID($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`answer`,count(*) as `num`");
		$this->db->from("`answer_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`answer`");
		$this->db->order_by("`answer`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}