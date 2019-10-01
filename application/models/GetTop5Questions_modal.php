<?php 
class GetTop5Questions_modal extends CI_Model {
	
	/* Get Top 5 Questions */
	public function getTop5Questions_function(){
		$this->db->select("`m_e`.`name` AS `element`, `m_q`.`question`, sum(`m_am`.`answer`) AS `score`, count(`m_am`.`answer`) AS `count`");
		$this->db->from("`answer_mc` as `m_am`");
		$this->db->join("`questions` as `m_q`", "`m_q`.`id` = `m_am`.`question`", "INNER");
		$this->db->join("`elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "INNER");
		$this->db->group_by("`m_am`.`question`");
		$this->db->order_by("`score`", "desc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}