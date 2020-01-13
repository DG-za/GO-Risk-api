<?php 
class SaveManager_model extends CI_Model {
	
	/* Save Control Check */
	public function save_Manager($saveArr){
		$this->db->insert_batch('`com_user`',$saveArr);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}
}