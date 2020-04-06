<?php 
class UserRole_model extends CI_Model {
	public function Get_modules(){
		$this->db->select('*');    
		$query = $this->db->get('com_modules');    
		return $query->result();
	}

	/* Insert User */
	public function Set_modules($Insert_Array){
		$result = $this->db->insert("`com_user_roles_permission`",$Insert_Array);
		$insert_id = $this->db->insert_id();
		return $insert_id;
	}

	/* Insert User */
	public function Update_modules($Update_Array){
		$Where_Array=array(
			"user_role_id"=>$Update_Array['user_role_id'],
			"module_id"=>$Update_Array['module_id']
		);
		$dataArr=array(
			"can_read"=>$Update_Array['can_read'],
			"can_update"=>$Update_Array['can_update'],
			"can_delete"=>$Update_Array['can_delete']
		);
		$this->db->where($Where_Array);
		$this->db->update("`com_user_roles_permission`",$dataArr);
		return true;
	}

	// Fetch users roles
	public function Get_roles(){
		$this->db->select('*');    
		$query = $this->db->get('com_user_roles');    
		return $query->result();
	}


	public function Add_role($role_name){
		$result = $this->db->insert("`com_user_roles`",array('name' => $role_name, 'session_access' => 'accessDialog', 'is_permission_assign' => 'no'));
		$insert_id = $this->db->insert_id();
		return $insert_id;		
	}

	// update is_permission_assign status to yes when assign permissions
	public function Update_role_status($role_id){
		$Update_Array = array('is_permission_assign' => 'yes');
		$Where_Array = array('id' => $role_id );
		$this->db->where($Where_Array);
		$result = $this->db->update("`com_user_roles`",$Update_Array);
		return $result;
	}

	// Fetch module permissions base on role and module id
	public function Fetch_Module_Permissions($role_id, $module_id){
		$this->db->select('*');    
		$this->db->where('user_role_id',$role_id);
		$this->db->where('module_id',$module_id);
		$query = $this->db->get('com_user_roles_permission');    
		return $query->result();
	}

	// Admin can fetch single module permissions base on module Alias
	public function Fetch_Module_Permissions_Base_On_Alias($role_id,$module_alias){		
		$this->db->select('*');    
		$this->db->from('com_user_roles_permission');
		$this->db->where('user_role_id',$role_id);
		$query = $this->db->get();    
		return $query->result();	
	}

	

	// Fetch module permissions base on role  id
	public function Fetch_Role_Permissions($role_id){
		$this->db->select('*');    
		$this->db->where('user_role_id',$role_id);
		$query = $this->db->get('com_user_roles_permission');    
		return $query->result();
	}

}