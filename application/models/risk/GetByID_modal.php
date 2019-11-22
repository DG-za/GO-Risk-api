<?php 
class GetByID_modal extends CI_Model {
	
	/* Get All Roles */
	public function Get_By_ID($unique_id){
		$where_Array = array(
			"`unique_id`" => $unique_id,
		);
		$this->db->where($where_Array);
		$this->db->select('*');
		$this->db->from('`cars`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}