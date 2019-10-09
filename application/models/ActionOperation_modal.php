<?php 
class ActionOperation_modal extends CI_Model {

  public function getOneActionvictory($id)
   {
       $this->db->select('actions_victory.*,actions_risks.risk,actions_risks.element,actions_results.results,actions_measure.measure');
       $this->db->from('actions_victory');
       $this->db->join('actions_risks', 'actions_victory.id = actions_risks.victory');
       $this->db->join('actions_results', 'actions_victory.id = actions_results.victory');
       $this->db->join('actions_measure', 'actions_victory.id = actions_measure.victory');
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
       $this->db->select('actions_victory.*,actions_risks.risk,actions_risks.element,actions_results.results,actions_measure.measure');
       $this->db->from('actions_victory');
       $this->db->join('actions_risks', 'actions_victory.id = actions_risks.victory');
       $this->db->join('actions_results', 'actions_victory.id = actions_results.victory');
       $this->db->join('actions_measure', 'actions_victory.id = actions_measure.victory');
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

  
}

