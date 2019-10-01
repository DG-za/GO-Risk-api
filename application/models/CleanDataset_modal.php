<?php 
class CleanDataset_modal extends CI_Model {
	
	/* Get All answer_mc MAX(id) */
	public function Get_All_answer_mc_MAX_ID(){
		$Group_by_Array = array("`user`","`question`");
		$this->db->select("MAX(`id`) as `Max_ID`");
		$this->db->from("`answer_mc`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Delete answer_mc by ID Not In */
	public function Delete_answer_mc_ID_Not_In($Ignore_ID_Array){
		$this->db->where_not_in("`id`", $Ignore_ID_Array);
		$result = $this->db->delete("`answer_mc`");
		return $result;
	}
	
	/* Get All answer_desired MAX(id) */
	public function Get_All_answer_desired_MAX_ID(){
		$Group_by_Array = array("`user`","`element`");
		$this->db->select("MAX(`id`) as `Max_ID`");
		$this->db->from("`answer_desired`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Delete answer_desired by ID Not In */
	public function Delete_answer_desired_ID_Not_In($Ignore_ID_Array){
		$this->db->where_not_in("`id`", $Ignore_ID_Array);
		$result = $this->db->delete("`answer_desired`");
		return $result;
	}
	
	/* Get All answer_proof MAX(id) */
	public function Get_All_answer_proof_MAX_ID(){
		$Group_by_Array = array("`user`","`proof`");
		$this->db->select("MAX(`id`) as `Max_ID`");
		$this->db->from("`answer_proof`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Delete answer_proof by ID Not In */
	public function Delete_answer_proof_ID_Not_In($Ignore_ID_Array){
		$this->db->where_not_in("`id`", $Ignore_ID_Array);
		$result = $this->db->delete("`answer_proof`");
		return $result;
	}
}