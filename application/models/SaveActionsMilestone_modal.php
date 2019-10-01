<?php 
class SaveActionsMilestone_modal extends CI_Model {
	
	/* Save Actions Milestone */
	public function Replace_Actions_Milestone($Replace_Actions_Milestone_Array){
		$result = $this->db->replace('actions_milestone', $Replace_Actions_Milestone_Array);
		return $result;
	}
}