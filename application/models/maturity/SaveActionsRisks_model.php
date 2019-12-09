<?php 
class SaveActionsRisks_model extends CI_Model {
	
	/* Replace Action Risk */
	public function Replace_Action_Risk($Replace_Risks_Array){
		$result = $this->db->replace('mat_actions_risks',$Replace_Risks_Array);
		return $result;
	}
}