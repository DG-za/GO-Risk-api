<?php 
class SaveActionsVictory_modal extends CI_Model {
	
	/* Replace Action Victory */
	public function Replace_Action_Victory($Replace_Victory_Array){
		$result = $this->db->replace('actions_victory',$Replace_Victory_Array);
		return $result;
	}
}