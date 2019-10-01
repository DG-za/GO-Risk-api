<?php 
class SaveProof_modal extends CI_Model {
	
	/* Comment */
	public function Insert_Answer_Proof($Insert_Array){
		$result = $this->db->insert("`answer_proof`",$Insert_Array);
		return $result;
	}
}