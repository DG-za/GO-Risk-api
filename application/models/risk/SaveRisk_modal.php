<?php 
class SaveRisk_modal extends CI_Model {
	
	/* Save Risk */
	public function save_Risk($saveArr){
		$this->db->insert_batch('`risk`',$saveArr);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}
}