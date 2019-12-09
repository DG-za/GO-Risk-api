<?php 
class SaveActionsMeasure_model extends CI_Model {
	
	/* REPLACE Actions Measure */
	public function Replace_Action_Measure($Replace_Measure_Array){
		$result = $this->db->replace("`mat_actions_measure`",$Replace_Measure_Array);
		return $result;
	}
}