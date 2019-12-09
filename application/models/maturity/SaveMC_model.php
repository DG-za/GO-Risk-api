<?php 
class SaveMC_model extends CI_Model {
	
	/* Get Save MC */
	public function Get_saveMC($Where_Array){
		$this->db->select("`id`,`user`,`element`,`question`,`answer`");
		$this->db->from("`mat_answer_mc`");
		$this->db->where($Where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/* Update Save MC */
	public function Update_saveMC($Where_Array,$Data_Update){
		$this->db->where($Where_Array);
		$result = $this->db->update("`mat_answer_mc`",$Data_Update);
		return $result;
	}
	
	/* Insert Save MC */
	public function Insert_saveMC($Insert_Array){
		$result = $this->db->insert("`mat_answer_mc`",$Insert_Array);
		return $result;
	}
}