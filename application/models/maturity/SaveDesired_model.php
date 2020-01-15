<?php 
class SaveDesired_model extends CI_Model {
	
	/* Insert Answer Disired */
	public function Insert_Desired($Insert_Desired_Array,$whereArr){
		$this->db->delete("`mat_answer_desired`",$whereArr);
		$result = $this->db->insert('mat_answer_desired',$Insert_Desired_Array);
		return $result;
	}
}