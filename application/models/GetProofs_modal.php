<?php 
class GetProofs_modal extends CI_Model {
	
	/* Get All Proofs With Join */
	public function Get_Proofs(){
		$this->db->select("`mt_pt`.`proof_type_name`,`mt_e`.`name`,`mt_p`.`proof`");
		$this->db->from("`proofs` as `mt_p`");
		$this->db->join("`elements` as `mt_e`", "`mt_e`.`id` = `mt_p`.`element`","left");
		$this->db->join("`proof_types` as `mt_pt`", "`mt_p`.`type` = `mt_pt`.`proof_type_id`","left");
		$this->db->order_by("`mt_e`.`name`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}