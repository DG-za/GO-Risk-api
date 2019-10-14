<?php 
class GetPerformanceMCAll_modal extends CI_Model {
	
	/* Get All `elements` by Group by */
	public function Get_All_Performance_Elements_Function(){
		$this->db->select("`id`,`name`");
		$this->db->from("`performance_elements`");
		$this->db->group_by("`sequence`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` by Elements_ID */
	public function Get_All_answer_mc_By_Performance_Elements_ID_Function($ID){
		$this->db->select("`answer` as `name`, count(DISTINCT `user`) as `value`, count(`answer`) as `score`");
		// Old query // $this->db->select("`answer` as `name`,count(`answer`) as `value`,sum(`answer`) as `score`");
		$this->db->from("`performance_mc`");
		$this->db->where("`element`",$ID);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}