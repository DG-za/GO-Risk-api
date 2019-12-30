<?php 
class Get5BiggestGapsPerformance_model extends CI_Model {
	
	/* Get All `elements` by Group by */
	public function GetAllElements_Function(){
		$Group_by_Array = array("`sequence`");
		$this->db->select("`id`,`name`");
		$this->db->from("`mat_performance_areas`");
		$this->db->group_by($Group_by_Array);
		$this->db->order_by(`name`,`desc`);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Practice Answers By Element */
	public function getAllPerformanceAnswersByElement_function($elementId,$selectedSessionId) {
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId,
				"`element`"=>$elementId
			);
		}else{
			$whereArr=array(
				"`element`"=>$elementId
			);
		}
		$this->db->select("sum(`answer`) AS `sum`,count(`answer`) AS `count`");
		$this->db->from("`mat_performance_mc`");
		$this->db->where($whereArr);
		//$this->db->group_by("`m_am`.`element`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Practice Desired By Element */
	public function getAllPerformanceDesiredByElement_function($elementId,$selectedSessionId) {
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId,
				"`element`"=>$elementId
			);
		}else{
			$whereArr=array(
				"`element`"=>$elementId
			);
		}
		$this->db->select("sum(`desired`) AS `sum`,count(`desired`) AS `count`");
		$this->db->from("`mat_performance_desired`");
		$this->db->where($whereArr);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}