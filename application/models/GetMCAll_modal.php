<?php 
class GetMCAll_modal extends CI_Model {
	
	/* Get All `elements` by Group by */
	public function Get_All_Elements_Function(){
		$Group_by_Array = array("`cat`","`sequence`");
		$this->db->select("`id`,`name`");
		$this->db->from("`elements`");
		$this->db->group_by($Group_by_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` by Elements_ID */
	public function Get_All_answer_mc_By_Elements_ID_Function($ID){
		$this->db->select("`answer` as `name`,count(`answer`) as `value`");
		$this->db->from("`answer_mc`");
		$this->db->where("`element`",$ID);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}