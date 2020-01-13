<?php 
class SaveDesired_model extends CI_Model {
	
	/* Insert Answer Disired */
	public function Insert_Desired($Insert_Desired_Array){
		$result = $this->db->insert('mat_answer_desired',$Insert_Desired_Array);
		return $result;
	}
}