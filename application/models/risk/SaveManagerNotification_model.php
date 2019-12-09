<?php 
class SaveManagerNotification_model extends CI_Model {
	
	/* Save Manager Notification */
	public function save_Manager_Notification($saveArr){
		$this->db->insert_batch('`com_manager_notify`',$saveArr);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}
}