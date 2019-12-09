<?php 
class SaveActionsResults_model extends CI_Model {
	
	/* Replace Action Result */
	public function Replace_Action_Result($Replace_Action_Result_Array){
		$result = $this->db->replace('mat_actions_results',$Replace_Action_Result_Array);
		return $result;
	}
}