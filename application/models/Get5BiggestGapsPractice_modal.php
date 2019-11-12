<?php 
class Get5BiggestGapsPractice_modal extends CI_Model {
	
	/* Get All `elements` by Group by */
	public function GetAllElements_Function(){
		$Group_by_Array = array("`cat`","`sequence`");
		$this->db->select("`id`,`name`");
		$this->db->from("`elements`");
		$this->db->group_by($Group_by_Array);
		$this->db->order_by(`name`,`desc`);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Practice Answers By Element */
	public function getAllPracticeAnswersByElement_function($elementId) {
		$this->db->select("sum(`answer`) AS `sum`,count(`answer`) AS `count`");
		$this->db->from("`answer_mc`");
		$this->db->where("`element`", $elementId);
		//$this->db->group_by("`m_am`.`element`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Practice Desired By Element */
	public function getAllPracticeDesiredByElement_function($elementId) {
		$this->db->select("sum(`desired`) AS `sum`,count(`desired`) AS `count`");
		$this->db->from("`answer_desired`");
		$this->db->where("`element`", $elementId);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}