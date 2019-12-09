<?php 
class Saveperformance_model extends CI_Model {
	
	/* Comment */
	public function Save_Performance_Element($name){

		//$last_sequence = $this->db->select('sequence')->from('performance_elements')->limit(1)->order_by('id','ASC')->get()->row();
		$last_sequence = $this->db->select("sequence")->limit(1)->order_by('id',"DESC")->get("mat_performance_elements")->row();;
		$last_sequence = $last_sequence->sequence;
		$last_sequence++;

		$Insert_Array = array(
			"`name`" => $name,
			"`sequence`" => $last_sequence,
		);

		$result = $this->db->insert("`mat_performance_elements`",$Insert_Array);
		return $result;
	}
}