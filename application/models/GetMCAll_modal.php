<?php 
class GetMCAll_modal extends CI_Model {
	
	/* Get All `elements` by Group by */
	public function Get_All_Elements_Function(){
		$Group_by_Array = array("`cat`","`sequence`");
		$this->db->select("`id`,`name`");
		$this->db->from("`elements`");
		$this->db->group_by($Group_by_Array);
		$this->db->order_by(`name`,`desc`);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` by Elements_ID */
	public function Get_Structured_Answers_By_Element($ID){
		$this->db->select("`answer` as `name`, count(`answer`) as `value`, sum(`answer`) as `sum`");
		$this->db->from("`answer_mc`");
		$this->db->where("`element`",$ID);
		$this->db->group_by("`answer`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` */
	public function Get_Total_Answers_By_Element($ID){
		$this->db->select("count(`answer`) as `total`");
		$this->db->from("`answer_mc`");
		$this->db->where("`element`",$ID);
		$query_result = $this->db->get();
		return $query_result->result();
	}
}