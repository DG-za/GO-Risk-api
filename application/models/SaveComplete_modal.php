<?php 
class SaveComplete_modal extends CI_Model {
	
	/* Insert Complete */
	public function Insert_Complete($Insert_SaveComplete_Array){
		$result = $this->db->insert('answer_complete',$Insert_SaveComplete_Array);
		return $result;
	}
}