<?php 
class SaveUser_model extends CI_Model {
	
	/* Insert User */
	public function Insert_User($Insert_Array){
		$result = $this->db->insert("`com_user`",$Insert_Array);
		return $this->db->insert_id();
	}
	/* Insert_User_Into_Session */
	public function Insert_User_Into_Session($session_id,$Insert_saveUser_Result){
		$this->db->select("*");
		$this->db->where("`id`",$session_id);
		$this->db->from("`mat_session`");
		$result = $this->db->get();
		if($result->num_rows() > 0){
			$sessionData=$result->result();
			if(!empty($sessionData[0]->user)){
				$explodeSessionData=explode(",",($sessionData[0]->user));
				$explodeSessionData[] =$Insert_saveUser_Result;
				$implodeSessionData= implode(",", $explodeSessionData);
				$updateArr=array("`user`"=>$implodeSessionData);
				$this->db->where("`id`",$session_id);
				$this->db->update("`mat_session`",$updateArr);
			}else{
				$insertArr=array("`user`"=>$implodeSessionData);
				$this->db->where("`id`",$session_id);
				$this->db->insert("`mat_session`",$insertArr);
			}
		}
		
	}
	/* Check User Availability */
	public function Check_User_Availability($email){
		$this->db->where("`email`",$email);
		$result = $this->db->get("`com_user`")->num_rows();
		return $result;
	}
}