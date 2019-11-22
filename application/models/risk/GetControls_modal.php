<?php 
class GetControls_modal extends CI_Model {
	
	/* Get Controls */
	public function get_Controls(){
		$where_Array = array(
			"`hazard_desc`" => 1,
		);
		$this->db->where($where_Array);
		$this->db->select('*');
		$this->db->from('`controls`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}