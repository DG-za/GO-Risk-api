<?php 
class SaveActionsMeasure_modal extends CI_Model {
	
	/* REPLACE Actions Measure */
	public function Replace_Action_Measure($Replace_Measure_Array){
		$result = $this->db->replace("`actions_measure`",$Replace_Measure_Array);
		return $result;
	}
}