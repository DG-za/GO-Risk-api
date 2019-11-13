<?php 
class SaveProof_modal extends CI_Model {
	
	/* Comment */
	public function Insert_Answer_Proof($Insert_Array){
			$this->db->select("*");
			$this->db->from("`answer_proof`");
			$this->db->where($Insert_Array);
			$results=$this->db->get();
			if($results->num_rows() == 0){
				$result = $this->db->insert("`answer_proof`",$Insert_Array);
				return $result;
			}
	}
}