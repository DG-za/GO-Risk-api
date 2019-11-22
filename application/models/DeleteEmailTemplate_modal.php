<?php 
class DeleteEmailTemplate_modal extends CI_Model {
	
	/* Delete Email Template */
	public function Delete_EmailTemplate($Where_Array){

		$this->db->where($Where_Array);
		$this->db->delete("`email_template`");
		$result = $this->db->affected_rows();
		return $result;
	}
}