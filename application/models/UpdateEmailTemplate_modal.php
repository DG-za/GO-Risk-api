<?php 
class UpdateEmailTemplate_modal extends CI_Model {
	
	/* Update Email Template */
	public function Update_EmailTemplate($Update_Array,$Where_Array){

		$this->db->where($Where_Array);
		$result = $this->db->update("`email_template`",$Update_Array);
		return $result;
	}
	
	/* Update Email Template Status */
	public function Update_Status($Update_Array,$Where_Array){

		$this->db->where($Where_Array);
		$result = $this->db->update("`email_template`",$Update_Array);
		return $result;
	}
}