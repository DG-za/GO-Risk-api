<?php 
class SaveControlCheck_model extends CI_Model {
	
	/* Save Control Check */
	public function save_Control_Check($saveArr){
		$insert_id = $this->db->insert_batch('`risk_control_check`',$saveArr);
		//$insert_id = $this->db->insert_id();
		return $insert_id;
	}
}