<?php 

class GetMCAllChart_Model extends CI_Model {
	
	
	public function getAllData($selectedSessionId){

		$query1 = $this->db->query("
			SELECT  

			maccat.name as category, 
			maccat.id as category_id,

			matele.name as element,
			matele.id as element_id,

			matans.answer,
			matans.user,

			matque.question, 
			matque.id as ques_id
			
			FROM mat_category as maccat
			
			JOIN mat_elements as matele
			ON matele.cat = maccat.id

			JOIN mat_answer_mc as matans
			ON matans.element =  matele.id

			JOIN mat_questions as matque
			ON matque.id = matans.question
	
			WHERE matans.session_id =  $selectedSessionId
			
			ORDER BY maccat.name ASC
		
		");
		$data1 = $query1->result();

		return $data1;
	}

}