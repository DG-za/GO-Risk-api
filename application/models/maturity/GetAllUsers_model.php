<?php 
class GetAllUsers_model extends CI_Model {
	
	/* Get All Users */
	public function getAllUsers_function(){
		$this->db->select("`com_user`.`id`,`email`,`firstname`,`lastname`,`password`,`com_user_roles`.`name` as `role`,`com_user_roles`.`id` as `userRoleId`");
		$this->db->from("`com_user`");
		$this->db->join("`com_user_roles`","`com_user_roles`.`id`=`com_user`.`user_role_id`","LEFT");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	public function getUsers_function(){
		$this->db->select("`u`.`id`,`u`.`email`,`u`.`firstname`,`u`.`lastname`,`ur`.`name` as `role`,ur.session_access");
		$this->db->from("`com_user` u");    
    $this->db->join("`com_user_roles` ur", "ur.id = u.user_role_id", "LEFT");
		$this->db->where("`ur`.`name` !="  , 'Admin');
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	/*public function getSessionUsers_function($selectedSessionId){
		$this->db->select("user");
		$this->db->where("`id` "  , $selectedSessionId);
		$this->db->from("`mat_session`");
		$query_result = $this->db->get();
		return $query_result->row();
	}*/
	public function getSessionUsers_function($user,$selectedSessionId){
		$this->db->select("`id`");
		$this->db->where("`user` "  , $user);
		$this->db->where("`session_id` "  , $selectedSessionId);
		$this->db->from("`mat_answer_mc`");
		$query_result = $this->db->get();
		if($query_result->num_rows()>0){
			return 1;
		}else{
			$this->db->select("`id`");
			$this->db->where("`user` "  , $user);
			$this->db->where("`session_id` "  , $selectedSessionId);
			$this->db->from("`mat_performance_mc`");
			$query_result2 = $this->db->get();
			if($query_result2->num_rows()>0){
				return 1;
			}
		}
	}

	public function checkIsAnswered_function($user){
		$this->db->select("`id`");
		$this->db->where("`user` "  , $user);
		$this->db->from("`mat_answer_mc`");
		$query_result = $this->db->get();
		if($query_result->num_rows()){
			return 1;
		}else{
			$this->db->select("`id`");
			$this->db->where("`user` "  , $user);
			$this->db->from("`mat_performance_mc`");
			$query_result2 = $this->db->get();
			if($query_result2->num_rows()){
				return 1;
			}
		}
	}

	
}