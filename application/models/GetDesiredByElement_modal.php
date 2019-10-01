<?php 
class GetDesiredByElement_modal extends CI_Model {
	
	/* Get All Desired By Element_ID */
	public function Get_Desired_by_Element_ID($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`element`,SUM(`desired`=2) AS `n1`, SUM(`desired`=3) AS `n2`, SUM(`desired`=4) AS `n3`, COUNT(*) AS `total`");
		$this->db->from("`answer_desired`");
		$this->db->where($where_Array);
		$this->db->group_by("`element`");
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}