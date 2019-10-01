<?php 
class SavePerformanceMC_modal extends CI_Model {
	
	/* Insert Performance MC */
	public function Insert_Performance_MC($Insert_Array){
		$result = $this->db->insert("`performance_mc`",$Insert_Array);
		return $result;
	}
}