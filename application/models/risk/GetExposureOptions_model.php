<?php
class GetExposureOptions_model extends CI_Model
{
	/* Get Exposure Meta */
	public function get_exposure_options()
	{
		$this->db->select('*');
		$this->db->from('`risk_exposure_option`');
		$query_result = $this->db->get();
		return $query_result->result();
	}
}
