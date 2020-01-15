<?php 
class GetSessionProgress_model extends CI_Model {


public function get_progress_of_performance($user_id,$selectedSessionId){
	
	if($selectedSessionId != null && $selectedSessionId != "null"){
		$array = array('user' => $user_id, 'session_id' => $selectedSessionId);
		$this->db->where($array);
	}else{
		$array = array('user' => $user_id);
		$this->db->where($array);
	}
	$this->db->select('count(*) as total_answers');
	$this->db->from('mat_performance_mc');
	$query_result = $this->db->get()->result();
	$total_answers = $query_result[0]->total_answers;

	$this->db->select('count(*) as total_elements');
	$this->db->from('mat_performance_areas');	
	$query_result = $this->db->get()->result();
	$total_elements = $query_result[0]->total_elements;

	$this->db->select('count(*) as total_performance');
	$this->db->from('mat_performance');	
	$query_result = $this->db->get()->result();
	$total_performance = $query_result[0]->total_performance;

	$total_questions = $total_elements * $total_performance;
	$progress = ( $total_answers/$total_questions) * 100;
    //echo $total_answers."=".$total_elements."=".$total_performance."=".$total_questions;
	if(!empty($progress)){
		$progress = $progress;
	}else{
		$progress = 0;
	}
	return $progress;
  }

/********** THIS IS FOR THE PRACTICE MODULE *******/
public function get_progress_of_practice($user_id,$selectedSessionId){
	if($selectedSessionId != null && $selectedSessionId != "null"){
		$array = array('user' => $user_id, 'session_id' => $selectedSessionId);
		$this->db->where($array);
	}else{
		$array = array('user' => $user_id);
		$this->db->where($array);
	}
	$this->db->select('count(*) as total_answers');
	$this->db->from('mat_answer_mc');
	$query_result = $this->db->get()->result();
	$total_answers = $query_result[0]->total_answers;

	$this->db->select('count(*) as total_questions');
	$this->db->from('mat_questions');	
	$query_result = $this->db->get()->result();
	$total_questions = $query_result[0]->total_questions;	
	$progress = ( $total_answers/$total_questions) * 100;
	if(!empty($progress)){
		$progress = $progress;
	}else{
		$progress = 0;
	}
	return $progress;
}

public function getUsersByRole_function($role){
		$this->db->select("`id`,`email`,`firstname`,`lastname`,`role`");
		// $this->db->where("`role`"  , $role);
		$this->db->from("`com_user`");
		$query_result = $this->db->get();
		return $query_result->result();
}

public function getUsersById($userID){
		$this->db->select("`id`,`email`,`firstname`,`lastname`,`role`");
		$this->db->where("`id`"  , $userID);
		$this->db->from("`com_user`");
		$query_result = $this->db->get();
		return $query_result->result();
}

public function getSessionUsers($selectedSessionId){
		$this->db->select("user");
		$this->db->where("`id` "  , $selectedSessionId);
		$this->db->from("`mat_session`");
		$query_result = $this->db->get();
		return $query_result->row();
	}

/* FUNCTION FOR THE PERFORMANCE ASSESSMENT */
/* Get answers of performance */
public function get_answers_of_performance($emp_id,$element_id,$selectedSessionId){
		$this->db->select('pm.id,pm.question as question_id,p.question,pm.answer,pm.element');
		$this->db->from("mat_performance_mc pm");
		$this->db->join("mat_performance p","p.id = pm.question");
		$this->db->where("pm.user" , $emp_id);	
		$this->db->where("pm.element",$element_id);
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$this->db->where("pm.session_id",$selectedSessionId);
		}
		$this->db->order_by("pm.id","ASC");
		$query_result = $this->db->get();
		//echo $this->db->last_query();
		return $query_result->result();	
}

public function get_single_answer_of_performance($que_id,$ans_arr_id){
		$this->db->select('*');
		$this->db->from("mat_performance");		
		$this->db->where("id" , $que_id);	
		$query_result = $this->db->get();		
		return $query_result->row($ans_arr_id);	
}

public function get_performance_area_name($ele_id){
		$this->db->select('name');
		$this->db->from("mat_performance_areas");		
		$this->db->where("id" , $ele_id);	
		$query_result = $this->db->get();		
		return $query_result->row('name');	
}

/* Get elemets of performance */
public function get_performance_areas(){
		$this->db->select('*');
		$this->db->from("mat_performance_areas");
		$query_result = $this->db->get();		
		return $query_result->result();
}

public function get_proof_by_employee($ele_id,$emp_id,$selectedSessionId){
	if($selectedSessionId !=  null && $selectedSessionId != "null"){
		$where_Array = array(
			"`m_ap`.`element`" => $ele_id,
			"`m_ap`.`user`" => $emp_id,
			"`m_ap`.`session_id`" => $selectedSessionId
		);
	}else{
		$where_Array = array(
			"`m_ap`.`element`" => $ele_id,
			"`m_ap`.`user`" => $emp_id
		);
	}
		
		$this->db->select("`m_p`.`id`,`m_p`.`proof`,`m_p`.`type`");
		$this->db->from("`mat_proofs` as `m_p`");
		$this->db->join("`mat_answer_proof` as `m_ap`", "`m_ap`.`proof` = `m_p`.`id`", "INNER");
		$this->db->where($where_Array);
		$query_result = $this->db->get();
		return $query_result->result();
	}

public function get_gesired_by_employee($ele_id,$emp_id,$assessment_type,$selectedSessionId){
	if($selectedSessionId !=  null && $selectedSessionId != "null"){
		$where_Array = array(
			"`element`" => $ele_id,
			"`user`" => $emp_id,
			"`session_id`" => $selectedSessionId
		);
	}else{
		$where_Array = array(
			"`element`" => $ele_id,
			"`user`" => $emp_id,
		);
	}
		
		
		$this->db->select("`element`,`desired`,SUM(`desired`=2) AS `n1`, SUM(`desired`=3) AS `n2`, SUM(`desired`=4) AS `n3`, COUNT(*) AS `total`");
		if($assessment_type == "practice"){
			$this->db->from("`mat_answer_desired`");
		}else{
			$this->db->from("`mat_performance_desired`");
		}
		$this->db->where($where_Array);
		$this->db->group_by("`element`");
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}

public function DeleteAnswerOfPerformance($ele_id,$emp_id){
		$this->db->where('element', $ele_id);
		$this->db->where('user', $emp_id);
	    $this->db->delete('mat_performance_mc');   	    
	    if ( $this->db->affected_rows() > 0 ){
				$this->db->where('element', $ele_id);
				$this->db->where('user', $emp_id);
				$this->db->delete('mat_performance_desired'); 	    
		    if ( $this->db->affected_rows() > 0 ){
		    	return 1;
		    }else{
		    	return 0;
		    }
	    }else { 
	    	return 0;
	    }		
}

public function get_performance_desired_by_employee($ele_id,$emp_id,$selectedSessionId){
	if($selectedSessionId != null && $selectedSessionId != "null"){
		$where_Array = array(
			"`element`" => $ele_id,
			"`user`" => $emp_id,
			"`session_id`" => $selectedSessionId,
		);
	}else{
		$where_Array = array(
			"`element`" => $ele_id,
			"`user`" => $emp_id,
		);
	}
		
		$this->db->select("`element`,SUM(`desired`=2) AS `n1`, SUM(`desired`=3) AS `n2`, SUM(`desired`=4) AS `n3`, COUNT(*) AS `total`");
		$this->db->from("`mat_performance_desired`");
		$this->db->where($where_Array);
		$this->db->group_by("`element`");
		$this->db->order_by("`element`", "asc");
		$query_result = $this->db->get();
		return $query_result->result();
	}




/************** FUNCTION FOR THE PRACTICE ASSESSMENT *************/
/* Get categories of practice */
public function get_practice_categories(){
	    $this->db->select('*');
		$this->db->from("mat_category");
		$query_result = $this->db->get();		
		return $query_result->result();
}


/* Get elemets of practices assessment */
public function get_practice_elements($cat_id){
	   $this->db->select('*');
	   $this->db->where("cat",$cat_id);
	   $this->db->order_by("sequence","ASC");
	   $this->db->from("mat_elements");
	   $query_result = $this->db->get();		
	   return $query_result->result();
}

/* Get answers of practice assessment */

public function get_answers_of_practice($emp_id,$element_id,$selectedSessionId){
		$this->db->select('am.id,am.question as question_id,q.question,am.answer,am.element');
		$this->db->from("mat_answer_mc am");
		$this->db->join("mat_questions q","q.id = am.question");
		$this->db->where("am.user" , $emp_id);	
		$this->db->where("am.element",$element_id);	
		if($selectedSessionId != null && $selectedSessionId != "null"){
			$this->db->where("am.session_id",$selectedSessionId);
		}
		$this->db->order_by("am.id","ASC");
		$query_result = $this->db->get();
		//echo $this->db->last_query();
		return $query_result->result();	

}

/* Get name of the element */
public function get_practice_element_name($ele_id){
		$this->db->select('name');
		$this->db->from("mat_elements");		
		$this->db->where("id" , $ele_id);	
		$query_result = $this->db->get();		
		return $query_result->row('name');	
}

public function get_single_answer_of_practice($que_id,$ans_arr_id){
		$this->db->select('*');
		$this->db->from("mat_questions");		
		$this->db->where("id" , $que_id);	
		$query_result = $this->db->get();		
		return $query_result->row($ans_arr_id);	
}

public function DeleteAnswerOfPractice($ele_id,$employee_id){
		$this->db->where('element', $ele_id);
		$this->db->where('user', $employee_id);
	    $this->db->delete('mat_answer_mc');   	    
	    if ( $this->db->affected_rows() > 0 ){
	    	$this->db->where('element', $ele_id);
			$this->db->where('user', $employee_id);
	    	$this->db->delete('mat_answer_complete');
	    	if ( $this->db->affected_rows() > 0 ){
	    		$this->db->where('element', $ele_id);
				$this->db->where('user', $employee_id);
		    	$this->db->delete('mat_answer_desired');
		    	if ( $this->db->affected_rows() > 0 ){
		    		$this->db->where('element', $ele_id);
					$this->db->where('user', $employee_id);
		    		$this->db->delete('mat_answer_proof');
		    		if ( $this->db->affected_rows() > 0 ){
				    	return 1;
				    }else{
				    	return 0;
				    }
		    	}
	    	}   	 
	    } else { 
	    	return 0;
	    }	
}

}