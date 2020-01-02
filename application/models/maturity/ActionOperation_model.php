<?php 
class ActionOperation_model extends CI_Model {

  public function getOneActionvictory($id)
   {
       $this->db->select('mat_actions_victory.*,mat_actions_risks.risk,mat_actions_risks.element,mat_actions_results.results,mat_actions_measure.measure');
       $this->db->from('mat_actions_victory');
       $this->db->join('mat_actions_risks', 'mat_actions_victory.id = mat_actions_risks.victory','left');
       $this->db->join('mat_actions_results', 'mat_actions_victory.id = mat_actions_results.victory','left');
       $this->db->join('mat_actions_measure', 'mat_actions_victory.id = mat_actions_measure.victory','left');
       $this->db->where('mat_actions_victory.id',$id);
       $query = $this->db->get();
       $result = $query->result_array();
       foreach ($result as $key => $value) {
             $this->db->select('*');
             $this->db->where('victory', $value['id']);
             $query = $this->db->get('mat_actions_milestone');
             $data = $query->result_array();
             $result[$key]['milestones']= $data;
       }
       return $result;
   }
   public function getAllActionvictory($selectedSessionId)
   {
      if($selectedSessionId != null && $selectedSessionId != "null" ){
        $this->db->where('mat_actions_victory.session_id', $selectedSessionId);
      }
       $this->db->select('mat_actions_victory.*,mat_actions_risks.risk,mat_actions_risks.element,mat_actions_results.results,mat_actions_measure.measure,com_user.firstname,com_user.lastname,mat_performance_areas.name as pename ,mat_elements.name as ename');
       $this->db->from('mat_actions_victory');
       $this->db->join('mat_actions_risks', 'mat_actions_victory.id = mat_actions_risks.victory','left');
       $this->db->join('mat_actions_results', 'mat_actions_victory.id = mat_actions_results.victory','left');
       $this->db->join('mat_actions_measure', 'mat_actions_victory.id = mat_actions_measure.victory','left');
       $this->db->join('com_user', 'mat_actions_victory.focusareaowner = com_user.id');
       $this->db->join('mat_performance_areas', 'mat_performance_areas.id = mat_actions_victory.performance_elements');
       $this->db->join('mat_elements', 'mat_actions_victory.element = mat_elements.id');

       $query = $this->db->get();
       $result = $query->result_array();
       foreach ($result as $key => $value) {
             $this->db->select('*');
             $this->db->where('victory', $value['id']);
             $query = $this->db->get('mat_actions_milestone');
             $data = $query->result_array();
             $result[$key]['milestones']= $data;
       }
       return $result;
   }
   public function insertActionCall($update_id,$victory_data,$risk_data,$results_data,$measure_data,$milestones_data)
   {
      if($update_id != ''){
          $this->load->helper('date');
          date_default_timezone_set('UTC');
          $victory_data["last_midified"] = date("Y-m-d h-i-s");
          $this->db->where('id', $update_id);
          $victory_data_result = $this->db->update('mat_actions_victory',$victory_data);
          $this->db->where('victory', $update_id);
          $risk_data_result = $this->db->update('mat_actions_risks',$risk_data);
          $this->db->where('victory', $update_id);
          $actions_results_result = $this->db->update('mat_actions_results',$results_data);
          $this->db->where('victory', $update_id);
          $actions_measure_result = $this->db->update('mat_actions_measure',$measure_data);
          foreach ($milestones_data as $key => $value) {
            unset($value['person_name']);
            if($value['id'] == '')
             {
                     $value['element']= $victory_data['element'];
                     $value['victory']= $update_id;
                     $actions_milestone_result = $this->db->insert("mat_actions_milestone",$value);
             }
             else
             {
                     $this->db->where('id', $value['id']);
                     $actions_milestone_result=$this->db->update('mat_actions_milestone',$value);
             }
             
         }
         if($victory_data_result && $risk_data_result && $actions_results_result && $actions_measure_result &&  $actions_milestone_result)
           {
              return true;
           }else{
             return false;
           }
      }else{
          $result = $this->db->insert("mat_actions_victory",$victory_data);
          $last_id = $this->db->insert_id();
          $risk_data["victory"] = $last_id;
          $risk_data_result = $this->db->insert("mat_actions_risks",$risk_data);
          $results_data["victory"] = $last_id;
          $results_data_result = $this->db->insert("mat_actions_results",$results_data);
          $measure_data["victory"] = $last_id;
          $measure_data_result = $this->db->insert("mat_actions_measure",$measure_data);
         foreach ($milestones_data as $key => $value) {
                 unset($milestones_data[$key]['person_name']);
                 $milestones_data[$key]['victory']= $last_id;
                 $milestones_data[$key]['element']= $victory_data['element'];
                 $risk_data_results = $this->db->insert("mat_actions_milestone",$milestones_data[$key]);
           }
           if($result && $risk_data_result && $results_data_result && $measure_data_result &&  $risk_data_results)
           {
              return true;
           }else{
             return false;
           }
      }
   }
   public function getUserName($id)
   {
             $this->db->select('firstname,lastname');
             $this->db->where('id', $id);
             $query = $this->db->get('com_user');
             $query = $query->row();
             return $query;
   }
   public function performance_elements($id)
   {
             $this->db->select('name');
             $this->db->where('id', $id);
             $query = $this->db->get('mat_performance_areas');
             $query = $query->row();
             return $query;
   }
   public function elements($id)
   {
             $this->db->select('name');
             $this->db->where('id', $id);
             $query = $this->db->get('mat_elements');
             $query = $query->row();
             return $query;
   }

  
}

