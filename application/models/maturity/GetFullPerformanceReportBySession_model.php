<?php 
class GetFullPerformanceReportBySession_model extends CI_Model {
	
	/* Get All Category */
	public function All_Elements(){
		$this->db->select("*");
		$this->db->from("`mat_performance_areas`");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get All Performance */
	public function All_Performance(){
		$this->db->select("`id`,`question`,`poor`,`mediocre`,`good`,`excellent`");
		$this->db->from("`mat_performance`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Performance Answer By Area_ID */
	public function Get_Performance_Answer_by_Area_ID($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`" => $selectedSessionId
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}
		
		$this->db->select("`question`,SUM(`answer`=1) AS `n1`,SUM(`answer`=2) AS `n2`,SUM(`answer`=3) AS `n3`,SUM(`answer`=4) AS `n4`,COUNT(*) AS `total`");
		$this->db->from("`mat_performance_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`question`");
		$this->db->order_by("`question`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Performance Quetion ID */
	public function Get_Performance_Quetion_ID(){
		$this->db->select("`id`");
		$this->db->from("`mat_performance`");
		$this->db->order_by("`id`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get All Answer MC By Element_ID */
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
		$this->db->select("`answer`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`mat_performance_mc`");
		// $this->db->like("`element`",$ID);
		$this->db->where($whereArr);
		$this->db->order_by("answer", "asc");
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
	
	/* Get All Desired By Area_ID */
	public function Get_Desired_by_Element_ID($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`" => $selectedSessionId
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}
		
		$this->db->select("`element`,SUM(`desired`=2) AS `n1`, SUM(`desired`=3) AS `n2`, SUM(`desired`=4) AS `n3`, COUNT(*) AS `total`");
		$this->db->from("`mat_performance_desired`");
		$this->db->where($where_Array);
		$this->db->group_by("`element`");
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}