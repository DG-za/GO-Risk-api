<?php 
class GetAllRisks_modal extends CI_Model {
	
	/* Get All Roles */
	public function Get_All_Risks(){
		$this->db->select('`risk`.*, COUNT(`incidents`.`id`) AS incidents, COUNT(`control_check`.`id`) AS controls');
		$this->db->from('`risk`');
		$this->db->join('`incidents`','`risk`.`id` = `incidents`.`risk`', 'left outer');
		$this->db->join('`control_check`','`risk`.`id` = `control_check`.`risk` AND checked =0', 'left outer');
		$this->db->group_by('`risk`.`id`');
		$query_result = $this->db->get();

		//$this->db->last_query();
		return $query_result->result();
	}
}
/*SELECT risk.*, COUNT(incidents.id) AS incidents, COUNT(control_check.id) AS controls FROM risk Left OUTER JOIN incidents ON risk.id = incidents.risk Left OUTER JOIN control_check ON risk.id = control_check.risk AND checked =0 GROUP BY risk.id */