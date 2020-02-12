<?php 
class GetAllSessions_model extends CI_Model {
	
	/* getAllSessions */
	public function getAllSessions(){
		$this->db->select("mat_session.*,com_company.name as company_name");
		$this->db->from("`mat_session`");
		$this->db->join('com_company', 'mat_session.company_id = com_company.id','left');
		$query_result = $this->db->get();
		return $query_result->result();
	}

    // Fetch userwise sessions
	public function getAllSessions_User($toUserId){
		$sessionIdArr=array();
		$sessionArr=array();
		$this->db->select("mat_session.*");
		$this->db->from("mat_session");
		$this->db->join("mat_answer_mc","mat_answer_mc.session_id = mat_session.id ");
		$this->db->where("mat_answer_mc.user",$toUserId);
		$this->db->group_by("mat_session.id");
		$query_result = $this->db->get();
		$resultArr=$query_result->result();
		foreach ($resultArr as $key => $value) {
			if(!in_array($value->id, $sessionIdArr)){
				$sessionIdArr[]=$value->id;
				$sessionArr[]=$value;
			}
		}
		
		$this->db->select("mat_session.*");
		$this->db->from("mat_session");
		$this->db->join("mat_answer_proof","mat_answer_proof.session_id = mat_session.id ");
		$this->db->where("mat_answer_proof.user",$toUserId);
		$this->db->group_by("mat_session.id");
		$query_result = $this->db->get();
		$resultArr=$query_result->result();
		foreach ($resultArr as $key => $value) {
			if(!in_array($value->id, $sessionIdArr)){
				$sessionIdArr[]=$value->id;
				$sessionArr[]=$value;
			}
		}
		
		$this->db->select("mat_session.*");
		$this->db->from("mat_session");
		$this->db->join("mat_answer_desired","mat_answer_desired.session_id = mat_session.id ");
		$this->db->where("mat_answer_desired.user",$toUserId);
		$this->db->group_by("mat_session.id");
		$query_result = $this->db->get();
		$resultArr=$query_result->result();
		foreach ($resultArr as $key => $value) {
			if(!in_array($value->id, $sessionIdArr)){
				$sessionIdArr[]=$value->id;
				$sessionArr[]=$value;
			}
		}
		
		$this->db->select("mat_session.*");
		$this->db->from("mat_session");
		$this->db->join("mat_performance_mc","mat_performance_mc.session_id = mat_session.id ");
		$this->db->where("mat_performance_mc.user",$toUserId);
		$this->db->group_by("mat_session.id");
		$query_result = $this->db->get();
		$resultArr=$query_result->result();
		foreach ($resultArr as $key => $value) {
			if(!in_array($value->id, $sessionIdArr)){
				$sessionIdArr[]=$value->id;
				$sessionArr[]=$value;
			}
		}
		
		$this->db->select("mat_session.*");
		$this->db->from("mat_session");
		$this->db->join("mat_performance_desired","mat_performance_desired.session_id = mat_session.id ");
		$this->db->where("mat_performance_desired.user",$toUserId);
		$this->db->group_by("mat_session.id");
		$query_result = $this->db->get();
		$resultArr=$query_result->result();
		foreach ($resultArr as $key => $value) {
			if(!in_array($value->id, $sessionIdArr)){
				$sessionIdArr[]=$value->id;
				$sessionArr[]=$value;
			}
		}
		return $sessionArr;
	}


	/* getAllChildCompanies */
	public function getAllChildCompanies($company_id){
		$this->db->select("`id`");
		$this->db->from("`com_company`");
		$this->db->where("`parent`",$company_id);
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
}