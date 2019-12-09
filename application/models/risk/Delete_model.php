<?php 
class Delete_model extends CI_Model {
	
	/* Delete data */
	public function delete($id){
		$where_Array = array(
			"`id`" => $id,
		);
		$this->db->where($where_Array);
		$this->db->delete('`risk`');
		$query_result = $this->db->affected_rows();
		return $query_result;
	}
}