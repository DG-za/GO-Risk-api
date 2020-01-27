<?php 
class GetAllSessions_model extends CI_Model {
	
	/* getAllSessions */
	public function getAllSessions_function($user_id,$company_id=Null){
		if($company_id!=Null){
			$this->db->where("company_id",$company_id);
		}
		$this->db->select("mat_session.*,com_company.name as company_name");
		$this->db->from("`mat_session`");
		$this->db->join('com_company', 'mat_session.company_id = com_company.id','left');
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
}