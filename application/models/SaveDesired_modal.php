<?php 
class SaveDesired_modal extends CI_Model {
	
	/* Insert Answer Disired */
	public function Insert_Desired($Insert_Desired_Array){
		$result = $this->db->insert('answer_desired',$Insert_Desired_Array);
		return $result;
	}
}