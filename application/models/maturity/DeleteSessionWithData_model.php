<?php 
class DeleteSessionWithData_model extends CI_Model {
	
	/* Delete Question Function */
	public function deleteSessionData_function($session_id){
		$data_Delete = array(
			"`session_id`" => $session_id,
		);
		$data_Delete2 = array(
			"`id`" => $session_id,
		);
		$this->db->delete("`mat_answer_mc`",$data_Delete);
		$this->db->delete("`mat_answer_proof`",$data_Delete);
		$this->db->delete("`mat_answer_desired`",$data_Delete);
		$this->db->delete("`mat_answer_complete`",$data_Delete);
		$this->db->delete("`mat_performance_mc`",$data_Delete);
		$this->db->delete("`mat_performance_desired`",$data_Delete);
		$this->db->delete("`mat_session`",$data_Delete2);
		if($this->db->affected_rows()){
			return true;
		}
	}
}