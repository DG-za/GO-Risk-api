<?php 
class SaveCompany_model extends CI_Model {
	
	/* Save Insert_Risk_Cat */
	public function Insert_Company($Insert_Array){
		$result = $this->db->insert("`com_company`",$Insert_Array);
		return $this->db->insert_id();
	}
}