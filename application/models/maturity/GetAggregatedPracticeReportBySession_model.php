<?php 
class GetAggregatedPracticeReportBySession_model extends CI_Model {
	
	/* Get All `elements` by Group by */
	public function Get_All_Elements_Function(){
		$Group_by_Array = array("`cat`","`sequence`");
		$this->db->select("`id`,`name`");
		$this->db->from("`mat_elements`");
		$this->db->group_by($Group_by_Array);
		$this->db->order_by(`name`,`desc`);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` by Elements_ID */
	public function Get_Structured_Answers_By_Element($ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`element`"=>$ID,
				"`session_id`"=>$selectedSessionId
			);
		}else{
			$whereArr=array(
				"`element`"=>$ID
			);
		}
		
		$this->db->select("`answer` as `name`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($whereArr);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` */
	public function Get_Total_Answers_By_Element($ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`element`"=>$ID,
				"`session_id`"=>$selectedSessionId
			);
		}else{
			$whereArr=array(
				"`element`"=>$ID
			);
		}
		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($whereArr);
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Top 5 Elements */
	public function getTop5Elements_function($selectedSessionId) {
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`m_am`.`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$this->db->select("`m_e`.`name`,(sum(`m_am`.`answer`) / count(`m_am`.`answer`)) AS `newScore`");
		$this->db->from("`mat_answer_mc` as `m_am`");
		$this->db->join("`mat_elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "LEFT");
		$this->db->group_by("`m_am`.`element`");
		$this->db->order_by("`newScore`", "desc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Top 5 Questions */
	public function getTop5Questions_function($selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`m_am`.`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$this->db->select("`m_e`.`name` AS `element`, `m_q`.`question`, (sum(`m_am`.`answer`) / count(`m_am`.`answer`)) AS `newScore`");
		$this->db->from("`mat_answer_mc` as `m_am`");
		$this->db->join("`mat_questions` as `m_q`", "`m_q`.`id` = `m_am`.`question`", "INNER");
		$this->db->join("`mat_elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "INNER");
		$this->db->group_by("`m_am`.`question`");
		$this->db->order_by("`newScore`", "desc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Bottom 5 Elements Function */
	public function getBottom5Elements_function($selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`m_am`.`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$this->db->select("`m_e`.`name`,(sum(`m_am`.`answer`) / count(`m_am`.`answer`)) AS `newScore`");
		$this->db->from("`mat_answer_mc` as `m_am`");
		$this->db->join("`mat_elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "LEFT");
		$this->db->group_by("`m_am`.`element`");
		$this->db->order_by("`newScore`", "asc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Bottom 5 Elements Function */
	public function getBottom5Questions_function($selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`m_am`.`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$this->db->select("`m_e`.`name` AS `element`, `m_q`.`question`, (sum(`m_am`.`answer`) / count(`m_am`.`answer`)) AS `newScore`");
		$this->db->from("`mat_answer_mc` as `m_am`");
		$this->db->join("`mat_questions` as `m_q`", "`m_q`.`id` = `m_am`.`question`", "INNER");
		$this->db->join("`mat_elements` as `m_e`", "`m_e`.`id` = `m_am`.`element`", "INNER");
		$this->db->group_by("`m_am`.`question`");
		$this->db->order_by("`newScore`", "asc");
		$this->db->limit(5);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}