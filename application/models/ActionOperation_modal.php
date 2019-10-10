<?php 
class ActionOperation_modal extends CI_Model {

  public function getOneActionvictory($id)
   {
       $this->db->select('actions_victory.*,actions_risks.risk,actions_risks.element,actions_results.results,actions_measure.measure');
       $this->db->from('actions_victory');
       $this->db->join('actions_risks', 'actions_victory.id = actions_risks.victory','left');
       $this->db->join('actions_results', 'actions_victory.id = actions_results.victory','left');
       $this->db->join('actions_measure', 'actions_victory.id = actions_measure.victory','left');
       $this->db->where('actions_victory.id',$id);
       $query = $this->db->get();
       $result = $query->result_array();
       foreach ($result as $key => $value) {
             $this->db->select('*');
             $this->db->where('victory', $value['id']);
             $query = $this->db->get('actions_milestone');
             $data = $query->result_array();
             $result[$key]['milestones']= $data;
       }
       return $result;
   }
   public function getAllActionvictory()
   {
       $this->db->select('actions_victory.*,actions_risks.risk,actions_risks.element,actions_results.results,actions_measure.measure,user.firstname,user.lastname,performance_elements.name as pename , elements.name as ename');
       $this->db->from('actions_victory');
       $this->db->join('actions_risks', 'actions_victory.id = actions_risks.victory','left');
       $this->db->join('actions_results', 'actions_victory.id = actions_results.victory','left');
       $this->db->join('actions_measure', 'actions_victory.id = actions_measure.victory','left');
       $this->db->join('user', 'actions_victory.focusareaowner = user.id');
       $this->db->join('performance_elements', 'performance_elements.id = actions_victory.performance_elements');
       $this->db->join('elements', 'actions_victory.element = elements.id');
       $query = $this->db->get();
       $result = $query->result_array();
       foreach ($result as $key => $value) {
             $this->db->select('*');
             $this->db->where('victory', $value['id']);
             $query = $this->db->get('actions_milestone');
             $data = $query->result_array();
             $result[$key]['milestones']= $data;
       }
       return $result;
   }
   public function insertActionCall($update_id,$victory_data,$risk_data,$results_data,$measure_data,$milestones_data)
   {
      if($update_id != ''){
          $this->db->where('id', $update_id);
          $victory_data_result = $this->db->update('actions_victory',$victory_data);
          $this->db->where('victory', $update_id);
          $risk_data_result = $this->db->update('actions_risks',$risk_data);
          $this->db->where('victory', $update_id);
          $actions_results_result = $this->db->update('actions_results',$results_data);
          $this->db->where('victory', $update_id);
          $actions_measure_result = $this->db->update('actions_measure',$measure_data);
          foreach ($milestones_data as $key => $value) {
             $this->db->where('victory', $value['victory']);
             $actions_milestone_result=$this->db->update('actions_milestone',$value);
         }
         if($victory_data_result && $risk_data_result && $actions_results_result && $actions_measure_result &&  $actions_milestone_result)
           {
              return true;
           }else{
             return false;
           }
      }else{
          $result = $this->db->insert("actions_victory",$victory_data);
          $last_id = $this->db->insert_id();
          $risk_data["victory"] = $last_id;
          $risk_data_result = $this->db->insert("actions_risks",$risk_data);
          $results_data["victory"] = $last_id;
          $results_data_result = $this->db->insert("actions_results",$results_data);
          $measure_data["victory"] = $last_id;
          $measure_data_result = $this->db->insert("actions_measure",$measure_data);
         foreach ($milestones_data as $key => $value) {
                 unset($milestones_data[$key]['person_name']);
                 $milestones_data[$key]['victory']= $last_id;
                 $milestones_data[$key]['element']= $victory_data['element'];
                 $risk_data_results = $this->db->insert("actions_milestone",$milestones_data[$key]);
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
             $query = $this->db->get('user');
             $query = $query->row();
             return $query;
   }
   public function performance_elements($id)
   {
             $this->db->select('name');
             $this->db->where('id', $id);
             $query = $this->db->get('performance_elements');
             $query = $query->row();
             return $query;
   }
   public function elements($id)
   {
             $this->db->select('name');
             $this->db->where('id', $id);
             $query = $this->db->get('elements');
             $query = $query->row();
             return $query;
   }

  
}

