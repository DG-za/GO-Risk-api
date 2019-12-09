<?php 
class SavePerformanceMC_model extends CI_Model {
	
	/* Insert Performance MC */
	public function Insert_Performance_MC($Insert_Array){
		$result = $this->db->insert("`mat_performance_mc`",$Insert_Array);
		return $result;
	}
	
	/* Update Performance MC */
	public function Update_Performance_MC($Update_Array,$Where_Array){
		$this->db->where($Where_Array);
		$result = $this->db->update("`mat_performance_mc`",$Update_Array);
		return $result;
	}
	
	/* Get count performance_mc is exist */
	public function Get_Answer_if_Exist($Where_Array){
		$this->db->select("`id`");
		$this->db->from("`mat_performance_mc`");
		$this->db->where($Where_Array);
		$query_result = $this->db->get();
		return $query_result->num_rows();
	}
	
}