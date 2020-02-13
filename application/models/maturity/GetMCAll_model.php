<?php 
class GetMCAll_model extends CI_Model {
	
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
}