<?php 
class SaveEmailTemplate_model extends CI_Model {
	
	/* Save Email Template */
	public function Insert_EmailTemplate($Insert_Array){
		$result = $this->db->insert("`com_email_template`",$Insert_Array);
		return $this->db->insert_id();
	}
}