<?php 
class SaveProofApi_modal extends CI_Model {
	
	/* Comment */
	public function Insert_Proof($Insert_Array){
		$result = $this->db->insert("`proofs`",$Insert_Array);
		return $result;
	}
}