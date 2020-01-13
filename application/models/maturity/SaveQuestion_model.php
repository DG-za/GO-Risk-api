<?php 
class SaveQuestion_model extends CI_Model {
	
	/* Insert User */
	public function Insert_saveQuestion($Insert_Array){
		$result = $this->db->insert("`mat_questions`",$Insert_Array);
		return $this->db->insert_id();
	}
}