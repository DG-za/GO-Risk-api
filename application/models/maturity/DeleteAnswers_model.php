<?php 
class DeleteAnswers_model extends CI_Model {
	
	/* Delete Question Function */
	public function deleteAnswers_function($Question_ID){
		$data_Delete = array(
			"`question`" => $Question_ID,
		);
		$result = $this->db->delete("`mat_answer_mc`",$data_Delete);
		return $result;
	}
}