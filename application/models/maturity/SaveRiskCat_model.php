<?php 
class SaveRiskCat_model extends CI_Model {
	
	/* Save Insert_Risk_Cat */
	public function Insert_Risk_Cat($Insert_Array){
		$result = $this->db->insert("`risk_cat`",$Insert_Array);
		return $this->db->insert_id();
	}
}