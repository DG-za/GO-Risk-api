<?php 
class GetMilestones_model extends CI_Model {
	
	/* Get Milestones */
	public function getMilestones_Function($Element_ID){
		$Where_Array = array(
			"`element`" => $Element_ID,
		);
		$this->db->select("`element`,`milestone`,`responsible_person`,`start_date`,`end_date`,`comment`,`status`");
		$this->db->from("`mat_actions_milestone`");
		$this->db->where($Where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}