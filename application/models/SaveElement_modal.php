<?php 
class SaveElement_modal extends CI_Model {
	
	/* Save Element */
	public function Insert_Element($Insert_Array){
		$result = $this->db->insert("`elements`",$Insert_Array);
		return $result;
	}
}