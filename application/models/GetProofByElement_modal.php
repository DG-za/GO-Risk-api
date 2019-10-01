<?php 
class GetProofByElement_modal extends CI_Model {
	
	/* Get All Proof By Element_ID with Join */
	public function Get_Proof_by_Element_ID_Join($Element_ID){
		$where_Array = array(
			"`m_ap`.`element`" => $Element_ID,
		);
		
		$this->db->select("`m_p`.`id`,`m_p`.`proof`,`m_p`.`type`");
		$this->db->from("`proofs` as `m_p`");
		$this->db->join("`answer_proof` as `m_ap`", "`m_ap`.`proof` = `m_p`.`id`", "INNER");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}