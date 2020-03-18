<?php
class GetExposureMeta_model extends CI_Model
{
	/* Get Exposure Meta */
	public function get_Exposure_Meta()
	{
		$this->db->select('*');
		$this->db->from('`risk_exposure_meta`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}
