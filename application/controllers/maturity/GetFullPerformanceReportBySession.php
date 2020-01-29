<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetFullPerformanceReportBySession extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 24-09-2019
	*  Description : A controller contain GetPerformanceAnswerByArea related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/GetFullPerformanceReportBySession_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id,performance_id,element_id is missing or empty';
		$user_id = $this->post('user_id');
		$selectedSessionId = $this->post('selectedSessionId');
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($user_id,$headers['Authorization']);
			
			$Pass_Data["data"] = array();
			if($token_status == TRUE){
				$All_Elements = $this->GetFullPerformanceReportBySession_model->All_Elements();
				if(!empty($All_Elements)){
					
					foreach ($All_Elements as $elementKey => $elementValue) {
						$elementArr=array();
						$allPerformanceQuestionsArr=array();
						$allPerformanceAnswerArr=array();
						$allPerformanceQuetionIdArr=array();
						$allAnswersArr=array();
						$allDesiredArr=array();
						$Element_ID=$elementValue->id;
						$elementArr["id"]=$elementValue->id;
						$elementArr["name"]=$elementValue->name;

						$All_Performances = $this->GetFullPerformanceReportBySession_model->All_Performance();
						if(!empty($All_Performances)){
							foreach($All_Performances as $key => $value){
								$allPerformanceQuestionsTempArr=array();
								$allPerformanceQuestionsTempArr = array("id" => $value->id,"question" => $value->question,"poor" => $value->poor,"mediocre" => $value->mediocre,"good" => $value->good,"excellent" => $value->excellent);
								$allPerformanceQuestionsArr[] = $allPerformanceQuestionsTempArr;
							}
							$elementArr["questions"]=$allPerformanceQuestionsArr;
						}else{
							$elementArr["questions"]="";
						}
						$All_Performance_Answer = $this->GetFullPerformanceReportBySession_model->Get_Performance_Answer_by_Area_ID($Element_ID,$selectedSessionId);
						if(!empty($All_Performance_Answer)){
							foreach($All_Performance_Answer as $allPerformanceAnswerKey => $allPerformanceAnswerValue){
								$allPerformanceAnswerTempArr=array();
								$allPerformanceAnswerTempArr = array("question" => $allPerformanceAnswerValue->question,"poor" => $allPerformanceAnswerValue->n1,"mediocre" => $allPerformanceAnswerValue->n2,"good" => $allPerformanceAnswerValue->n3,"excellent" => $allPerformanceAnswerValue->n4,"total" => $allPerformanceAnswerValue->total);
								$allPerformanceAnswerArr[] = $allPerformanceAnswerTempArr;
							}
							$elementArr["answers"]=$allPerformanceAnswerArr;
						}else{
							/*$All_Performance_Quetion_ID = $this->GetFullPerformanceReportBySession_model->Get_Performance_Quetion_ID();
							if(!empty($All_Performance_Quetion_ID)){
								foreach($All_Performance_Quetion_ID as $questionsKey => $questionsValue){
									$allPerformanceQuetionIdTempArr=array();
									$allPerformanceQuetionIdTempArr = array("question" => $questionsValue->id,"poor" => "0","mediocre" => "0","good" => "0","excellent" => "0","total" => "0");
									$allPerformanceQuetionIdArr[] = $allPerformanceQuetionIdTempArr;
								}
								$elementArr["answers"]=$allPerformanceQuetionIdArr;
							}else{
								$this->set_response($no_found, REST_Controller::HTTP_OK);
							}*/
							$elementArr["answers"]=$allPerformanceQuetionIdArr;
						}

						$All_Answer = $this->GetFullPerformanceReportBySession_model->Get_Structured_Performance_Answers_by_Area($Element_ID,$selectedSessionId);
						$Total_Answers_By_Element = $this->GetFullPerformanceReportBySession_model->Get_Total_Performance_Answers_by_Area($Element_ID,$selectedSessionId);

						$Get_Answer_Array = array();
						$allAnswerMergeArr = array();
						if(!empty($All_Answer)){

							/* Get total count of answers for this element */
							foreach($Total_Answers_By_Element as $key => $value){
								$total = $value->total;
							}

							/* Build array for chart */	
							foreach($All_Answer as $key => $value){
								$allAnswerMergeArr[$value->answer] = array(
									"name" => $value->answer,
									// "count" => $value->count,
									// "sum" => $value->sum,
									// "total" => $total,
									// "value" => number_format(($value->sum/$total),1)
									"value" => number_format(($value->value/$total)*100,1)
								);
									// "value" => $value->num);
								$Get_Answer_Array[] = $value->answer;
							}

							$Answer_Array = array("1","2","3","4");
							foreach($Answer_Array as $AA){
								if(!in_array($AA,$Get_Answer_Array)){
									$blank_merge_array = array("name" => $AA,"value" => 0);
									$allAnswersArr[] = $blank_merge_array;
								}else{
									$allAnswersArr[] = $allAnswerMergeArr[$AA];
								}
							}
							$elementArr["ratedMaturity"]=$allAnswersArr;
						}else{
							/*$Answer_Array = array("1","2","3","4");
							foreach($Answer_Array as $AA){
								$allAnswerMergeArr = array("name" => $AA,"value" => 0);
								$allAnswersArr[] = $allAnswerMergeArr;
							}*/
							$elementArr["ratedMaturity"]=$allAnswersArr;
						}

						$All_Desired = $this->GetFullPerformanceReportBySession_model->Get_Desired_by_Element_ID($Element_ID,$selectedSessionId);
						if(!empty($All_Desired)){
							foreach($All_Desired as $key => $value){
								$allDesiredMergeArr=array();
								$allDesiredMergeArr[0]['name'] = 'resilient';
								$allDesiredMergeArr[0]['value'] = $value->n3;
								$allDesiredMergeArr[1]['name'] = 'proactive';
								$allDesiredMergeArr[1]['value'] = $value->n2;
								$allDesiredMergeArr[2]['name'] = 'compliant';
								$allDesiredMergeArr[2]['value'] = $value->n1;
								$allDesiredArr=$allDesiredMergeArr;
							}
							$elementArr["desired"]=$allDesiredArr;
						}else{
							/*$allDesiredMergeArr=array();
							$allDesiredMergeArr[0]['name'] = 'resilient';
							$allDesiredMergeArr[0]['value'] = 0;
							$allDesiredMergeArr[1]['name'] = 'proactive';
							$allDesiredMergeArr[1]['value'] = 0;
							$allDesiredMergeArr[2]['name'] = 'compliant';
							$allDesiredMergeArr[2]['value'] = 0;
							$allDesiredArr=$allDesiredMergeArr;*/
							$elementArr["desired"]=$allDesiredArr;
						}
						if(sizeof($allPerformanceAnswerArr) == sizeof($allPerformanceQuestionsArr)){
							$elementArr["isShow"]=true;
						}else{
							$elementArr["isShow"]=false;
						}
						$Pass_Data["data"][]=$elementArr;
					}
					$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
				}else{
					$this->set_response($no_found, REST_Controller::HTTP_OK);
				}

				
			}else if($token_status == FALSE){
				$this->set_response($invalid, REST_Controller::HTTP_NON_AUTHORITATIVE_INFORMATION);
			}else{
				$this->set_response($not_found, REST_Controller::HTTP_NOT_FOUND);
			}
		}else{
			$parameter_required_array = ['status' => "true","statuscode" => 404,'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}
}