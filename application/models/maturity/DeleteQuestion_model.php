<?php 
class DeleteQuestion_model extends CI_Model {
	
	/* Delete Question Function */
	public function deleteQuestion_function($Question_ID){
		$data_Delete = array(
			"`id`" => $Question_ID,
		);
		$result = $this->db->delete("`mat_questions`",$data_Delete);
		return $result;
	}
}