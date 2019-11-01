<?php 
class GetCompanyColours_modal extends CI_Model {
	
	/* Get All Users */
	public function getAllCompanyColours_function(){
		$this->db->select("*");
		$this->db->from("`company_colours`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	public function getOneCompanyColours_function(){
		$this->db->select("`*`");
		$this->db->where("`id` ="  , 1);
		$this->db->from("`company_colours`");
		$query_result = $this->db->get();
		return $query_result->result();
	}

}