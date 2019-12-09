<?php 
class GetAllEmailTemplates_model extends CI_Model {
	
	/* Save Email Template */
	public function Get_All_EmailTemplates(){

		$this->db->select("*");
		$this->db->from("`com_email_template`");
		$query = $this->db->get();
		return $query->result();
	}
}