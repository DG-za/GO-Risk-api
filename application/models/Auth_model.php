<?php 
class Auth_model extends CI_Model {

   /*check user login*/

    public function user_login($username,$password) {
      $this->db->select("u.*,ur.name,ur.session_access");      // com_user_roles
      $this->db->from("`com_user` u");      
      $this->db->join("`com_user_roles` ur", "ur.id = u.user_role_id", "left");
      $this->db->where(['email'=>$username,'password'=>md5($password)]); 
      $query = $this->db->get();
      if($this->db->affected_rows() > 0){
           return  $query->row();
      }
       
	    // OLD CODE

      // $this->db->where(['email'=>$username,'password'=>md5($password)]);      
      // $query = $this->db->get('com_user');     
      // if($this->db->affected_rows() > 0){
      //      return  $query->row();
      // }
    }


    public function get_permissions($user_role_id){
      $this->db->select("*");     
      $this->db->from("`com_user_roles_permission`");    
      $this->db->where('user_role_id',$user_role_id); 
      $query = $this->db->get();      
      return  $query->result();
    }
// public function get_permissions($user_role_id){
//       $this->db->select("urp.*,m.module_name,m.module_alias,m.parent");     
//       $this->db->from("`com_user_roles_permission` urp");    
//       $this->db->join("`com_modules` m","m.id = urp.module_id", "left");    
//       $this->db->where('urp.user_role_id',$user_role_id); 
//       $query = $this->db->get();      
//       return  $query->result();
//     }


    /*log session data*/
    public function session_log($data){

        $this->db->insert('com_ci_sessions',$data);

    }


	/* That function will check on each & every request of the API*/

    public function check_token($userID,$token){

       $this->db->where('token',$token);

       $this->db->where('user_id',$userID);

       $res = $this->db->get('com_ci_sessions');

       if($this->db->affected_rows() > 0) {

        return TRUE;

      } 

    } 
   
}

