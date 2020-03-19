<?php 
class SaveExposureOption_model extends CI_Model {
	
	public function save_exposure_option($saveArr){
		$this->db->insert_batch('`risk_exposure_option`',$saveArr);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}

	public function update_exposure_option($saveArr, $exposure_id){
		$this->db->where('id',$exposure_id);
		$this->db->update('risk_exposure_option',$saveArr);
		return true;
	}
}
