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

	public function GetMaturityReporting_performance_mc_User($selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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

	public function GetMaturityReporting_answer_mc_User($selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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

	public function GetMaturityReporting_performance_desired_User($selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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

	public function GetMaturityReporting_answer_desired_User($selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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
	public function Get_Structured_Answers_By_Element($ID,$selectedSessionId,$toUserId = Null){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			if($toUserId == Null || $toUserId == "all"){
				$whereArr=array(
					"`element`"=>$ID,
					"`session_id`"=>$selectedSessionId
				);	
			}else{
				$whereArr=array(
					"`element`"=>$ID,
					"`user`"=>$toUserId,
					"`session_id`"=>$selectedSessionId
				);
			}
		}else{
			if($toUserId == Null || $toUserId == "all"){
				$whereArr=array(
					"`element`"=>$ID
				);	
			}else{
				$whereArr=array(
					"`element`"=>$ID,
					"`user`"=>$toUserId,
				);
			}
		}
		
		$this->db->select("`answer` as `name`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($whereArr);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` */
	public function Get_Total_Answers_By_Element($ID,$selectedSessionId,$toUserId = Null){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			if($toUserId == Null || $toUserId == "all"){
				$whereArr=array(
					"`element`"=>$ID,
					"`session_id`"=>$selectedSessionId
				);
			}else{
				$whereArr=array(
					"`element`"=>$ID,
					"`user`"=>$toUserId,
					"`session_id`"=>$selectedSessionId
				);
			}
		}else{
			if($toUserId == Null || $toUserId == "all"){
				$whereArr=array(
					"`element`"=>$ID
				);
			}else{
				$whereArr=array(
					"`element`"=>$ID,
					"`user`"=>$toUserId
				);
			}
		}
		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($whereArr);
		$query_result = $this->db->get();
		return $query_result->result();
	}

/*****************Methods for the desired report********************/
/* Get All `elements` by Group by */
	public function Get_All_performance_areas_Function(){
		$this->db->select("`id`,`name`");
		$this->db->from("`mat_performance_areas`");
		$this->db->group_by("`sequence`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` by Elements_ID */
	public function Get_Structured_Performance_Answers_By_Area($ID,$selectedSessionId){
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
	
	public function Get_Structured_Performance_Answers_By_Area_User($ID,$selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`element`"=>$ID,
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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
	public function Get_Total_Performance_Answers_By_Area($ID,$selectedSessionId){
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

	public function Get_Total_Performance_Answers_By_Area_User($ID,$selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$whereArr=array(
				"`element`"=>$ID,
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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