<?php 
class SaveManager_modal extends CI_Model {
	
	/* Save Control Check */
	public function save_Manager($saveArr){
		$this->db->insert_batch('`users`',$saveArr);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}
}