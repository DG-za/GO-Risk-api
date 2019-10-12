<?php 
class GetProofs_modal extends CI_Model {
	
	public function Get_Proofs(){
		$this->db->select("`mt_se`.`sub_elements_name`,`mt_e`.`name`,`mt_p`.`proof`");
		$this->db->from("`proofs` as `mt_p`");
		$this->db->join("`elements` as `mt_e`", "`mt_e`.`id` = `mt_p`.`element`","left");
		$this->db->join("`sub_elements` as `mt_se`", "`mt_p`.`type` = `mt_se`.`sub_elements_id`","left");
		$this->db->order_by("`mt_p`.`id`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}