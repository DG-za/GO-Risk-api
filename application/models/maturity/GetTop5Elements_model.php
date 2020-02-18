<?php 
class GetTop5Elements_model extends CI_Model {
	
	/* Get Top 5 Elements */
	public function getTop5Elements_function($selectedSessionId,$toUserId = Null) {
		$whereArr=array();
		if($selectedSessionId != null && $selectedSessionId != "null"){
			if($toUserId == Null || $toUserId == "all"){
				$whereArr=array(
					"`m_am`.`session_id`"=>$selectedSessionId
				);			
			}else{
				$whereArr=array(
					"`m_am`.`session_id`"=>$selectedSessionId,
					"`m_am`.`user`"=>$toUserId,

				);
			}
		}else{
			if($toUserId == Null || $toUserId == "all"){
						
			}else{
				$whereArr=array(
					"`m_am`.`session_id`"=>$selectedSessionId,
					"`m_am`.`user`"=>$toUserId,
				);
			}
		}
		$this->db->where($whereArr);
		$this->db->select("`m_e`.`name`,(sum(`m_am`.`answer`) / count(`m_am`.`answer`)) AS `newScore`");
		$this->db->from("`mat_answer_mc` as `m_am`");
		$this->db->join("`mat_elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "LEFT");
		$this->db->group_by("`m_am`.`element`");
		$this->db->order_by("`newScore`", "desc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}