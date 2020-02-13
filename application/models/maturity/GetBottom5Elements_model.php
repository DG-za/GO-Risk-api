<?php 
class GetBottom5Elements_model extends CI_Model {
	
	/* Get Bottom 5 Elements Function */
	public function getBottom5Elements_function($selectedSessionId,$toUserId = Null){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			if($toUserId == Null || $toUserId == "all"){
				$whereArr=array(
					"`m_am`.`session_id`"=>$selectedSessionId
				);			
			}else{
				$whereArr=array(
					"`m_am`.`session_id`"=>$selectedSessionId,
					"`m_am`.`user`"=>$selectedSessionId,
				);
			}
			$whereArr=array(
				"`m_am`.`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}else{
			if($toUserId == Null || $toUserId == "all"){
							
			}else{
				$whereArr=array(
					"`m_am`.`user`"=>$selectedSessionId,

				);
			}
		}
		$this->db->where($whereArr);
		$this->db->select("`m_e`.`name`,(sum(`m_am`.`answer`) / count(`m_am`.`answer`)) AS `newScore`");
		$this->db->from("`mat_answer_mc` as `m_am`");
		$this->db->join("`mat_elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "LEFT");
		$this->db->group_by("`m_am`.`element`");
		$this->db->order_by("`newScore`", "asc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}