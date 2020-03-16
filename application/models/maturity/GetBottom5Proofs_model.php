<?php 
class GetBottom5Proofs_model extends CI_Model {
	
	/* Get Bottom 5 Elements Function */
	public function getBottom5Proofs_function($selectedSessionId,$toUserId = Null){
		$whereArr=array();
		if($selectedSessionId != null && $selectedSessionId != "null"){
			if($toUserId == Null || $toUserId == "all"){
				$whereArr=array(
					"`m_ap`.`session_id`"=>$selectedSessionId
				);			
			}else{
				$whereArr=array(
					"`m_ap`.`session_id`"=>$selectedSessionId,
					"`m_ap`.`user`"=>$toUserId,
				);
			}
			$this->db->where($whereArr);
		}else{
			if($toUserId == Null || $toUserId == "all"){
							
			}else{
				$whereArr=array(
					"`m_ap`.`user`"=>$toUserId,
				);
			}
		}
		$this->db->where($whereArr);
		$this->db->select("`m_e`.`name` AS `element`, `m_p`.`proof`, count(`m_ap`.`proof`) AS `newScore`");
		$this->db->from("`mat_answer_proof` as `m_ap`");
		$this->db->join("`mat_proofs` as `m_p`", "`m_p`.`id` = `m_ap`.`proof`", "INNER");
		$this->db->join("`mat_elements` as `m_e`", "`m_e`.`id` = `m_ap`.`element`", "INNER");
		$this->db->group_by("`m_ap`.`proof`");
		$this->db->order_by("`newScore`", "asc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}