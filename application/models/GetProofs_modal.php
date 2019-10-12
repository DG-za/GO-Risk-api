<?php 
class GetProofs_modal extends CI_Model {
	
	public function Get_Proofs(){
		$this->db->select("*");
		$this->db->from("`proofs`");
		$this->db->join('performance_elements', 'proofs.element = performance_elements.sequence','left');
		$this->db->join('sub_elements', 'proofs.type = sub_elements.sub_elements_id','left');
		$this->db->order_by("`proofs.id`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}
}