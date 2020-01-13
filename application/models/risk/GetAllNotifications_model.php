<?php 
class GetAllNotifications_model extends CI_Model {
	
	/* Get All Notifications */
	public function get_All_Notifications(){
		$this->db->select('`id`, `owner`, `manager`, `risk`, `type`, `date`, `comments`, `sms`, `complete`, `complete_date`');
		$this->db->from('`com_manager_notify`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}