<?php 
class GetAllCompanies_modal extends CI_Model {
	
	/* Get All Companies */
	public function get_All_Companies(){
		$this->db->select('*');
		$this->db->from('`company`');
		$query_result = $this->db->get();
		return $query_result->result();
	}

	/* Get All Companies */
	public function get_Parent_Company($parent_id){
		$whereArr= array(
			'`id`'=>$parent_id
		);
		$this->db->where($whereArr);
		$this->db->select('`id`,`name`');
		$this->db->from('`company`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}