<?php 
class GetCompanyDetails_model extends CI_Model {
	
	/* Get All Users */
	public function getAllCompany_function(){
		$this->db->select("*");
		$this->db->from("`com_company_details`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	public function getOneCompany_function(){
		$this->db->select("`*`");
		$this->db->where("`id` ="  , 1);
		$this->db->from("`com_company_details`");
		$query_result = $this->db->get();
		return $query_result->result();
	}

}