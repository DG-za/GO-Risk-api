<?php 
class GetRiskDetail_model extends CI_Model {
	
	/* Get Exposure Type */
	public function get_Risk_Detail_Incidents($riskid){
		$whereArr=array(
			"risk" => $riskid
		);
		$this->db->where($whereArr);
		$this->db->select('*');
		$this->db->from('`risk_incidents`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
	public function get_Risk_Detail_Control_Check($riskid){
		$whereArr=array(
			"risk" => $riskid,
			"checked" => 0
		);
		$this->db->where($whereArr);
		$this->db->select('*');
		$this->db->from('`risk_control_check`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
	public function get_Risk_Detail($riskid){
		$whereArr=array(
			"risk.id" => $riskid
		);
		$this->db->where($whereArr);
		$this->db->select('*');
		$this->db->from('`risk`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}