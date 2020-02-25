<?php 
class SaveRisk_model extends CI_Model {
	
	/* Save Risk */
	public function save_Risk($saveArr){
		$this->db->insert_batch('`risk`',$saveArr);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}
	/* Save Risk */
	public function update_Risk($saveArr,$riskId){
		$this->db->where('id',$riskId);
		$this->db->update('risk',$saveArr);
		return true;
	}
}