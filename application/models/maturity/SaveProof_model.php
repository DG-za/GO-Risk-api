<?php 
class SaveProof_model extends CI_Model {
	
	/* Comment */
	public function Insert_Answer_Proof($Insert_Array){
			$this->db->select("*");
			$this->db->from("`mat_answer_proof`");
			$this->db->where($Insert_Array);
			$results=$this->db->get();
			if($results->num_rows() == 0){
				$result = $this->db->insert("`mat_answer_proof`",$Insert_Array);
				return $result;
			}
	}
	public function Delete_Answer_Proof($whereArr){
			$this->db->delete("`mat_answer_proof`",$whereArr);
	}
}