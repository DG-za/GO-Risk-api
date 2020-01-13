<?php 
class GetMaturityReporting_model extends CI_Model {
	
	/* Get Maturity Reporting from `performance_mc` */
	public function GetMaturityReporting_performance_mc($selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$Group_by_Array = array("`element`","`question`");
		$this->db->select("answer as `count_p_answer`");
		$this->db->from("`mat_performance_mc`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get Maturity Reporting from `answer_mc` */
	public function GetMaturityReporting_answer_mc($selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$Group_by_Array = array("`element`","`question`");
		$this->db->select("answer as `count_a_answer`");
		$this->db->from("`mat_answer_mc`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get Maturity Reporting Desired from `perfo_dmanceDesired` */
	public function GetMaturityReporting_performance_desired($selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$Group_by_Array = array("`element`");
		$this->db->select("desired as `count_p_desired`");
		$this->db->from("`mat_performance_desired`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get Maturity Reporting Desired from `answer_desired` */
	public function GetMaturityReporting_answer_desired($selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId
			);
			$this->db->where($whereArr);
		}
		$Group_by_Array = array("`element`");
		$this->db->select("desired as `count_a_desired`");
		$this->db->from("`mat_answer_desired`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}