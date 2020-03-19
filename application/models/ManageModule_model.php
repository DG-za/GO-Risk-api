<?php 
class ManageModule_model extends CI_Model {
  public function Save_Module($moduleObject){
    $result = $this->db->insert("`com_modules`",$moduleObject);
		return $this->db->insert_id();
  }

  public function get_modules(){
  	$this->db->select("*");
		$result = $this->db->get("`com_modules`");
		if($result->num_rows()>0){
			return $result->result();
		}
	
  }

  public function update_Module($moduleObject,$id){
    $this->db->where("`id`",$id);
    $this->db->update("`com_modules`",$moduleObject);
		return 1;
  }
}