<?php 
class SaveActionsVictory_model extends CI_Model {
	
	/* Replace Action Victory */
	public function Replace_Action_Victory($Replace_Victory_Array){
		$result = $this->db->replace('mat_actions_victory',$Replace_Victory_Array);
		$insert_id = $this->db->insert_id();
		if($result){
			return $insert_id;
		}else{
			return 0;
		}
		
	}
}