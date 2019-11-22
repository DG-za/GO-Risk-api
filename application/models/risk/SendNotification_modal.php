<?php 
class SendNotification_modal extends CI_Model {
	
	/* Get Users */
	public function get_Users($manager){
		$where_Array = array(
			'`id`'=> $manager
		);
		$this->db->select('*');
		$this->db->from('`users`');
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}