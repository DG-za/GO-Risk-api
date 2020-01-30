<?php 
class GetSessionAccessPIN_model extends CI_Model {
	
	/* Get AccessPIN */
	public function GetAccessPIN($accessPIN){
		$this->db->select("*");
		$this->db->from("`mat_session`");
		$this->db->where("`access_pin`",$accessPIN);
		$query_result = $this->db->get();
		return $query_result->row();
	}
}