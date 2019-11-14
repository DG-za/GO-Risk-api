<?php 
class GetTop5Elements_modal extends CI_Model {
	
	/* Get Top 5 Elements */
	public function getTop5Elements_function() {
		$this->db->select("`m_e`.`name`,(sum(`m_am`.`answer`) / count(`m_am`.`answer`)) AS `newScore`");
		$this->db->from("`answer_mc` as `m_am`");
		$this->db->join("`elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "LEFT");
		$this->db->group_by("`m_am`.`element`");
		$this->db->order_by("`newScore`", "desc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}