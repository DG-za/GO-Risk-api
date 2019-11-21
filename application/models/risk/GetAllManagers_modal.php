<?php 
class GetAllManagers_modal extends CI_Model {
	
	/* Get All Managers */
	public function get_All_Managers(){
		$this->db->select('`id`,`firstname`,`lastname`');
		$this->db->from('`user`');
		//$this->db->orderby('`name`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}