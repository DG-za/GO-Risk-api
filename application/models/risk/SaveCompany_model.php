<?php 
class SaveCompany_model extends CI_Model {
	
	/* Save Insert_Risk_Cat */
	public function Insert_Company($Insert_Array){
		$result = $this->db->insert("`com_company`",$Insert_Array);
		return $this->db->insert_id();
	}

	/* Save Insert_Risk_Cat */
	public function Update_Company($Update_Array,$id){
		$this->db->where("`id`",$id);
		$this->db->update("`com_company`",$Update_Array);
		return 1;
	}
}