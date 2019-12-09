<?php 
class GetProofByElementUser_model extends CI_Model {
	
	/* Get All Proof By Element_ID with Join */
	public function Get_Proof_by_Element_ID_User($Element_ID,$user_id){
		$where_Array = array(
			"`m_ap`.`element`" => $Element_ID,
			"`m_ap`.`user`" => $user_id
		);
		
		$this->db->select("`m_p`.`id`,`m_p`.`proof`,`m_p`.`type`");
		$this->db->from("`mat_proofs` as `m_p`");
		$this->db->join("`mat_answer_proof` as `m_ap`", "`m_ap`.`proof` = `m_p`.`id`", "INNER");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}