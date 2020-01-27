<?php 
class SaveSession_model extends CI_Model {
	
	/* Insert Update Session */
	public function Insert_Update_Session($jsonSession){
		$session_users = json_decode($jsonSession["session_users"]);
		if(isset($jsonSession["session_id"])){
			$Session_Array = array(
				"`session_name`" => $jsonSession["session_name"], 
			//	"`company_id`" => $jsonSession["company_id"], 
				"`user`" => implode(",", $session_users)
			);
			$this->db->where('id',$jsonSession["session_id"]);
			$this->db->update('mat_session',$Session_Array);
			if($this->db->affected_rows() > 0){
				return $jsonSession["session_id"];
			}else{
				return $jsonSession["session_id"];
			}
		}else{
			$Session_Array = array(
				"`session_name`" => $jsonSession["session_name"], 
			//	"`company_id`" => $jsonSession["company_id"], 
				"`user`" => implode(",", $session_users), 
				"`created_at`" => date("Y-m-d h:i:s")
			);
			$this->db->insert('mat_session',$Session_Array);
			$insert_id=$this->db->insert_id();
			return $insert_id;
		}
	}

	public function get_user_details_by_id($id) {
    $this->db->where(['id'=>$id]);      
    $query = $this->db->get('com_user');     
    if($this->db->affected_rows() > 0){
         return  $query->row();
    }
  }

	public function get_session_user_id($id) {
    $this->db->select('`user`');      
    $this->db->where(['id'=>$id]);      
    $query = $this->db->get('mat_session');     
    if($this->db->affected_rows() > 0){
         return  $query->row();
    }
  }
}