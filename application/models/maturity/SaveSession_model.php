<?php 
class SaveSession_model extends CI_Model {
	
	/* Insert Session */
	public function Insert_Session($Insert_Session_Array){
		$this->db->insert('mat_session',$Insert_Session_Array);
		$insert_id=$this->db->insert_id();
		return $insert_id;
	}

	public function get_user_details_by_id($id) {
    $this->db->where(['id'=>$id]);      
    $query = $this->db->get('com_user');     
    if($this->db->affected_rows() > 0){
         return  $query->row();
    }
  }
}