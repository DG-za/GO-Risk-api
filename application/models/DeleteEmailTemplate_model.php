<?php 
class DeleteEmailTemplate_model extends CI_Model {
	
	/* Delete Email Template */
	public function Delete_EmailTemplate($Where_Array){

		$this->db->where($Where_Array);
		$this->db->delete("`com_email_template`");
		$result = $this->db->affected_rows();
		return $result;
	}
}