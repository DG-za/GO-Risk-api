<?php 
class GetAggregate_modal extends CI_Model {
	
	/* Get Aggregate Function */
	public function getAggregate_function(){
		$this->db->select("AVG(`m_am`.`answer`) AS `answer`,`m_e`.`name`");
		$this->db->from("`answer_mc` as `m_am`");
		$this->db->join("`elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "INNER");
		$this->db->group_by("`m_am`.`element`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}