<?php 
class SaveComplete_model extends CI_Model {
	
	/* Insert Complete */
	public function Insert_Complete($Insert_SaveComplete_Array){
		$result = $this->db->insert('mat_answer_complete',$Insert_SaveComplete_Array);
		return $result;
	}
}