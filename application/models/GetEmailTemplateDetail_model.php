<?php 
class GetEmailTemplateDetail_model extends CI_Model {
	
	/* Save Email Template */
	public function Get_EmailTemplate_Details($WhereArr){

		$this->db->select("*");
		$this->db->from("`com_email_template`");
		$this->db->where($WhereArr);
		$query = $this->db->get();
		return $query->result();
	}
}