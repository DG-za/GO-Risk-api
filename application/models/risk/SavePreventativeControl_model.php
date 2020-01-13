<?php 
class SavePreventativeControl_model extends CI_Model {
	
	/* Save Insert_Risk_Cat */
	public function Save_Data($Insert_Array){
		$result = $this->db->insert("`risk_controls`",$Insert_Array);
		return $this->db->insert_id();
	}
}