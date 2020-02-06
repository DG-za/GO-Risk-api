<?php 
class GetProof_model extends CI_Model {
	
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
	
	public function Get_Proof_count_by_Proof_ID_User($Proof_ID,$selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`proof`" => $Proof_ID,
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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
	
	public function Get_User_count_by_Element_ID_User($Element_ID,$selectedSessionId,$toUserId){
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$where_Array = array(
				"`element`" => $Element_ID,
				"`session_id`"=>$selectedSessionId,
				"`user`" => $toUserId
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

	public function Get_All_Proof_Types(){
		$this->db->select("`id`,`proof_type_id`,`proof_type_name`");
		$this->db->from("`mat_proof_types`");
		$this->db->order_by("`proof_type_id`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}