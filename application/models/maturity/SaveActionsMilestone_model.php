<?php 
class SaveActionsMilestone_model extends CI_Model {
	
	/* Save Actions Milestone */
	public function Replace_Actions_Milestone($Replace_Actions_Milestone_Array){
		$result = $this->db->replace('mat_actions_milestone', $Replace_Actions_Milestone_Array);
		return $result;
	}
}