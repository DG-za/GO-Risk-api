<?php 
class GetIncidents_model extends CI_Model {
	
	/* Get Incedents */
	public function get_Incedents($risk = Null){
		if($risk != Null){
			$whereArr=array(
				"risk" => $risk
			);
			$this->db->where($whereArr);
		}
		$this->db->select('*');
		$this->db->from('`risk_incidents`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}