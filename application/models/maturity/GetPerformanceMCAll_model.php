<?php 
class GetPerformanceMCAll_model extends CI_Model {
	
	/* Get All `elements` by Group by */
	public function Get_All_Performance_Elements_Function(){
		$this->db->select("`id`,`name`");
		$this->db->from("`mat_performance_areas`");
		$this->db->group_by("`sequence`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` by Elements_ID */
	public function Get_Structured_Performance_Answers_By_Element($ID,$selectedSessionId){
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
		// Old query // $this->db->select("`answer` as `name`, count(DISTINCT `user`) as `value`, count(`answer`) as `score`");
		// Old query // $this->db->select("`answer` as `name`,count(`answer`) as `value`,sum(`answer`) as `score`");
		$this->db->from("`mat_performance_mc`");
		// $this->db->like("`element`",$ID);
		$this->db->where($whereArr);
		$this->db->order_by("name", "asc");
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All perfromance answers by Elements_ID */
	public function Get_Total_Performance_Answers_By_Element($ID,$selectedSessionId){
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
		$this->db->from("`mat_performance_mc`");
		$this->db->where($whereArr);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}