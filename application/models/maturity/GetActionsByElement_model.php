<?php 
class GetActionsByElement_model extends CI_Model {
	
	/* Get Action Results */
	public function get_Action_Results($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`results`");
		$this->db->from("`mat_actions_results`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get Action Results */
	public function get_Action_Definition($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`definition`");
		$this->db->from("`mat_actions_victory`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get Action Results */
	public function get_Action_Measure($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`measure`");
		$this->db->from("`mat_actions_measure`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get Action Results */
	public function get_Action_Risk($Element_ID){
		$where_Array = array(
			"`element`" => $Element_ID,
		);
		
		$this->db->select("`risk`");
		$this->db->from("`mat_actions_risks`");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}