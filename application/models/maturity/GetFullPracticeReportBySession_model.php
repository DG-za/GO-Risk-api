<?php 
class GetFullPracticeReportBySession_model extends CI_Model {
	
	/* Get All Category */
	public function All_Category(){
		$this->db->select("`id`,`name`,`byline`,`image`");
		$this->db->from("`mat_category`");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Elements By Category */
	public function getElementsByCat_function($Cat_ID){
		$where_Array = array(
			"`cat`" => $Cat_ID,
		);
		$this->db->from("`mat_elements`");
		$this->db->where($where_Array);
		$this->db->order_by("`sequence`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	/* Get All Quetions By Element_ID */
	public function Get_Quetions_by_Element_ID($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`id`,`element`,`question`,`reactive`,`compliant`,`proactive`,`resilient`,`sequence`");
		$this->db->from("`mat_questions`");
		$this->db->order_by("sequence","ASC");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	/* Get All Answer By Element_ID */
	public function Get_Answer_by_Element_ID($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`" => $selectedSessionId,
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}
		
		$this->db->select("`question`,SUM(`answer`=1) AS `n1`,SUM(`answer`=2) AS `n2`,SUM(`answer`=3) AS `n3`,SUM(`answer`=4) AS `n4`,COUNT(*) AS `total`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`question`");
		$this->db->order_by("`question`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All Question By Element_ID */
	public function Get_Question_by_Element_ID($Element_ID){
		
		$where_Array = array(
			"`element`" => $Element_ID
		);
		
		$this->db->select("`id`");
		$this->db->from("`mat_questions`");
		$this->db->where($where_Array);
		$this->db->order_by("`id`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get All Desired By Element_ID */
	public function Get_Desired_by_Element_ID($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`" => $selectedSessionId,
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}
		
		$this->db->select("`element`,SUM(`desired`=2) AS `n1`, SUM(`desired`=3) AS `n2`, SUM(`desired`=4) AS `n3`, COUNT(*) AS `total`");
		$this->db->from("`mat_answer_desired`");
		$this->db->where($where_Array);
		$this->db->group_by("`element`");
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get All `answer_mc` by Elements_ID */
	public function Get_Structured_Answers_By_Element($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`" => $selectedSessionId,
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}

		$this->db->select("`answer`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($where_Array);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` */
	public function Get_Total_Answers_By_Element($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`" => $selectedSessionId,
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}

		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get All Proof By Element_ID */
	public function Get_Proof_by_Element_ID($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`id`,`element`,`type`,`proof`");
		$this->db->from("`mat_proofs`");
		$this->db->where($where_Array);
		$this->db->order_by("`type`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get Total Users By Element_ID */
	public function Get_User_count_by_Element_ID($Element_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`"=>$selectedSessionId
			);
		}else{
			$where_Array = array(
				"`element`" => $Element_ID,
			);
		}
		$this->db->select("COUNT(DISTINCT `user`) as count_user");
		$this->db->from("`mat_answer_proof`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get All Proof By Element_ID */
	public function Get_Proof_count_by_Proof_ID($Proof_ID,$selectedSessionId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`proof`" => $Proof_ID,
				"`session_id`"=>$selectedSessionId
			);
		}else{
			$where_Array = array(
				"`proof`" => $Proof_ID,
			);
		}
		$this->db->select("COUNT(`id`) as `count_id`");
		$this->db->from("`mat_answer_proof`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}