<?php 
class GetAllEmailTemplates_modal extends CI_Model {
	
	/* Save Email Template */
	public function Get_All_EmailTemplates(){

		$this->db->select("*");
		$this->db->from("`email_template`");
		$query = $this->db->get();
		return $query->result();
	}
}