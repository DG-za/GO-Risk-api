<?php 
class GetParentCompanies_model extends CI_Model {
	
	/* Get Parent Companies */
	public function get_Parent_Companies($id){
		$whereArr=array(
				"id" => $id
			);
			$this->db->where($whereArr);
		$this->db->select('*');
		$this->db->from('`risk_company`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}