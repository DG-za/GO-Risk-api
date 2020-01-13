<?php 
class GetRiskByCompanyCategory_model extends CI_Model {
	
	/* Get Exposure Type */
	public function get_Risk_By_Company_Category($company,$cat){
		$whereArr=array(
			"company" => $company,
			"type" => $cat
		);
		$this->db->where($whereArr);
		$this->db->select('*');
		$this->db->from('`risk`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}