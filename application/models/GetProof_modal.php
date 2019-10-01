<?php 
class GetProof_modal extends CI_Model {
	
	/* Get All Proof By Element_ID */
	public function Get_Proof_by_Element_ID($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`id`,`element`,`type`,`proof`");
		$this->db->from("`proofs`");
		$this->db->where($where_Array);
		$this->db->order_by("`type`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}