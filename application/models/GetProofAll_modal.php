<?php 
class GetProofAll_modal extends CI_Model {
	
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
	public function Get_Structured_Proof_By_Element($ID){
		$this->db->select("`pr`.`type` as `name`, count(DISTINCT `apr`.`proof`) as `ticks`, count(`apr`.`proof`) as `total`");
		$this->db->from("`answer_proof` as `apr`");
		$this->db->join("`proofs` as `pr`","`pr`.`id` = `apr`.`proof`");
		$this->db->where("`apr`.`element`",$ID);
		$this->db->group_by("`pr`.`type`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Get All `answer_mc` */
	public function Get_Proofs_Questions_By_Element($ID){
		$this->db->select("`type` as `name`,count(`id`) as `total_questions`");
		$this->db->from("`proofs`");
		$this->db->like("`element`",$ID);
		$this->db->group_by("`type`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}