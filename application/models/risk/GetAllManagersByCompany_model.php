<?php 
class GetAllManagersByCompany_model extends CI_Model {
	
	/* Get All Companies */
	public function get_All_Managers_By_Company($company){
		$where_Array = array(
			"`company`" => $company,
		);
		$this->db->where($where_Array);
		$this->db->select('`id`,`firstname`,`lastname`');
		$this->db->from('`com_users`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}