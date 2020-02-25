<?php 
class GetRiskById_model extends CI_Model {
	
	/* Get Risk By Id */
	public function Get_Risk_By_ID($riskId){
		$this->db->select('`risk`.*,com_company.name as parent_company_name');
		$this->db->from('`risk`');
		$this->db->where('`risk`.`id`',$riskId);
		$this->db->join('`com_company`','`risk`.`parent_company_id` = `com_company`.`id`', 'left outer');
		// $this->db->join('`risk_incidents`','`risk`.`id` = `risk_incidents`.`risk`', 'left outer');
		// $this->db->join('`risk_control_check`','`risk`.`id` = `risk_control_check`.`risk` AND checked =0', 'left outer');
		// $this->db->group_by('`risk`.`id`');
		$query_result = $this->db->get();

		//$this->db->last_query();
		return $query_result->row();
	}
}
/*SELECT risk.*, COUNT(incidents.id) AS incidents, COUNT(control_check.id) AS controls FROM risk Left OUTER JOIN incidents ON risk.id = incidents.risk Left OUTER JOIN control_check ON risk.id = control_check.risk AND checked =0 GROUP BY risk.id */