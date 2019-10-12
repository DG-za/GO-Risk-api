<?php 
class GetBottom5Questions_modal extends CI_Model {
	
	/* Get Bottom 5 Elements Function */
	public function getBottom5Questions_function(){
		$this->db->select("`m_e`.`name` AS `element`, `m_q`.`question`, sum(`m_am`.`answer`) AS `score`, count(*) AS `count`");
		$this->db->from("`answer_mc` as `m_am`");
		$this->db->join("`questions` as `m_q`", "`m_q`.`id` = `m_am`.`question`", "INNER");
		$this->db->join("`elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "INNER");
		$this->db->group_by("`m_am`.`question`");
		$this->db->order_by("`score`", "asc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}