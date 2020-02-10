<?php 
class GetAccessPermissions_model extends CI_Model {
	
	/* Get All Users */
	public function Get_Menu_Item_Access(){
		$this->db->select("*");
		$this->db->from("`com_access_permissions`");
		$query_result = $this->db->get();
		return $query_result->result();
	}
	
	public function Update_Menu_Item_Status($Update_Array,$Where_Array){
		$this->db->where($Where_Array);
		$result = $this->db->update("`com_access_permissions`",$Update_Array);
		//echo $this->db->last_query(); die;
		if($this->db->affected_rows()){
		  return $result;
	    }
	}

}