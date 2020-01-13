<?php 
class GetPerformanceAreas_model extends CI_Model {
	
	/* Get All Performances_Areas */
	public function All_Performances_Areas(){
		$this->db->select("`id`,`name`");
		$this->db->from("`mat_performance_areas`");
		$this->db->order_by("`sequence`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get performance_areas ans given by same user_ID */
	public function Get_All_Answer_is_Done_By_User_ID($Where_Array){
		$this->db->select("COUNT(`id`) as `count_id`");
		$this->db->from("`mat_performance`");
		$query_result = $this->db->get()->result();
		$performance_count = $query_result[0]->count_id;
		
		$this->db->select("COUNT(`id`) as `count_id`");
		$this->db->from("`mat_performance_mc`");
		$this->db->where($Where_Array);
		$query_result = $this->db->get()->result();
		$performance_mc_count = $query_result[0]->count_id;
		if($performance_mc_count == $performance_count){
			return true;
		}else{
			return false;
		}
	}
}