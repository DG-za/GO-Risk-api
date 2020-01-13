<?php 
class SaveProofApi_model extends CI_Model {
	
	/* Comment */
	public function Insert_Proof($Insert_Array){
		$result = $this->db->insert("`mat_proofs`",$Insert_Array);
		return $result;
	}
}