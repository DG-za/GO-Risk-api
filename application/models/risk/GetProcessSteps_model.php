<?php 
class GetProcessSteps_model extends CI_Model {
	
	public function Get_Process_Steps(){
		$this->db->select('*');
		$this->db->from('`risk_process_step`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}
