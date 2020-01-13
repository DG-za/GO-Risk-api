<?php 
class SaveElement_model extends CI_Model {
	
	/* Save Element */
	public function Insert_Element($Insert_Array){
		$result = $this->db->insert("`mat_elements`",$Insert_Array);
		return $this->db->insert_id();
	}
}