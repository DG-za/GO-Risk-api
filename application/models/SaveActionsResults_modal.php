<?php 
class SaveActionsResults_modal extends CI_Model {
	
	/* Replace Action Result */
	public function Replace_Action_Result($Replace_Action_Result_Array){
		$result = $this->db->replace('actions_results',$Replace_Action_Result_Array);
		return $result;
	}
}