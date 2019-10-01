<?php 
class SaveActionsRisks_modal extends CI_Model {
	
	/* Replace Action Risk */
	public function Replace_Action_Risk($Replace_Risks_Array){
		$result = $this->db->replace('actions_risks',$Replace_Risks_Array);
		return $result;
	}
}