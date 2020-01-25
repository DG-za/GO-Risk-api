<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetAggregatedPracticeReportBySession extends REST_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 26-09-2019
	*  Description : A controller contain GetAggregatedPracticeReportBySession related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('check_token');				
		$this->load->model('maturity/GetAggregatedPracticeReportBySession_model');
	}
	
	public function index_post(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = $this->post('user_id');
		$selectedSessionId = $this->post('selectedSessionId');
		if(isset($user_id)){
			$headers = $this->input->request_headers();
			$token_status = check_token($this->post('user_id'),$headers['Authorization']);
			
			if($token_status == TRUE){
				$All_Elements = $this->GetAggregatedPracticeReportBySession_model->Get_All_Elements_Function();
				$Pass_Data = array();				
				if(!empty($All_Elements)){
					foreach($All_Elements as $elementskey => $elementsValue){
						$customArr = array('1','2','3','4');
						$id = $elementsValue->id;
						$name = $elementsValue->name;
						$ratedAggregatedMaturityArr["name"] = $name;
						$ratedAggregatedMaturityArr["series"] = array();
						$All_Answers_By_Element = $this->GetAggregatedPracticeReportBySession_model->Get_Structured_Answers_By_Element($id,$selectedSessionId);
						$Total_Answers_By_Element = $this->GetAggregatedPracticeReportBySession_model->Get_Total_Answers_By_Element($id,$selectedSessionId);
						
						$elementsArr = [];
						if(!empty($All_Answers_By_Element)){
						    /* Add matched elemets to the $elementsArr */			
							for($i=0; $i<4; $i++){
								if(isset($All_Answers_By_Element[$i]->name)){
								$elementsArr[$i] = $All_Answers_By_Element[$i]->name;
								}
							}

							/* Get total count of answers for this element */
							foreach($Total_Answers_By_Element as $totalAnswersKey => $totalAnswersValue){
								$total = $totalAnswersValue->total;
							}

							/* Build array for chart */
							foreach($All_Answers_By_Element as $key_mc => $value_mc){
								$merge_array_mc = array(
									"name" => $value_mc->name,
									"value" => number_format(($value_mc->value/$total)*100,1),
									"count"=>$value_mc->value,
									"sum"=>$value_mc->sum,
									"total" => $total
								);
								$ratedAggregatedMaturityArr["series"][] = $merge_array_mc;
							}

							/* Adding Blank Json Object to main array */
							$customTempArr = array_diff($customArr, $elementsArr);
							foreach($customTempArr as $key => $value) {
								$merge_array_mc = array(
									"name" => $value,
									"value" => 0,
									"sum"=>'0'
								);
								$ratedAggregatedMaturityArr["series"][] =$merge_array_mc;
							}

							/* Sorting Array in Ascending order like name wise */
							$price = array_column($ratedAggregatedMaturityArr["series"], 'name');
							array_multisort($price, SORT_ASC, $ratedAggregatedMaturityArr["series"]);

							$Pass_Data["data"]["ratedAggregatedMaturity"][] = $ratedAggregatedMaturityArr;
						}
					}
				}else{
					$Pass_Data["data"]["ratedAggregatedMaturity"][] = '';
				}

				$getTop5Elements_Result = $this->GetAggregatedPracticeReportBySession_model->getTop5Elements_function($selectedSessionId);
				if(!empty($getTop5Elements_Result)){
					$top5ElementsArr=array();
					foreach($getTop5Elements_Result as $key => $value){
						$top5ElementsTempArr = array("name" => $value->name, "newScore" =>number_format((float)$value->newScore,1,'.',''));
						$top5ElementsArr[] = $top5ElementsTempArr;
					}
					$Pass_Data["data"]["top5Elements"] = $top5ElementsArr;
				}else{
					$Pass_Data["data"]["top5Elements"] = '';
				}

				$getTop5Questions_Result = $this->GetAggregatedPracticeReportBySession_model->getTop5Questions_function($selectedSessionId);
				if(!empty($getTop5Questions_Result)){
					$top5QuestionsArr=array();
					foreach($getTop5Questions_Result as $key => $value){
						$top5QuestionsTempArr = array("question" => $value->question,"element" => $value->element,"newScore" =>number_format((float)$value->newScore,1,'.',''));
						$top5QuestionsArr[] = $top5QuestionsTempArr;
					}
					$Pass_Data["data"]["top5Questions"] = $top5QuestionsArr;
				}else{
					$Pass_Data["data"]["top5Questions"] = '';
				}

				$getBottom5Elements_Result = $this->GetAggregatedPracticeReportBySession_model->getBottom5Elements_function($selectedSessionId);
				$bottom5ElementsArr = array();
				if(!empty($getBottom5Elements_Result)){
					foreach($getBottom5Elements_Result as $key => $value){
						$bottom5ElementsTempArr = array("name" => $value->name, "newScore" =>number_format((float)$value->newScore,1,'.',''));
						$bottom5ElementsArr[] = $bottom5ElementsTempArr;
					}
					$Pass_Data["data"]["bottom5Elements"] = $bottom5ElementsArr;
				}else{
					$Pass_Data["data"]["bottom5Elements"] = '';
				}

				$getBottom5Questions_Result = $this->GetAggregatedPracticeReportBySession_model->getBottom5Questions_function($selectedSessionId);
				$bottom5QuestionsArr = array();
				if(!empty($getBottom5Questions_Result)){
					foreach($getBottom5Questions_Result as $key => $value){
						$bottom5QuestionsTempArr = array("question" => $value->question,"element" => $value->element,"newScore" =>number_format((float)$value->newScore,1,'.',''));
						$bottom5QuestionsArr[] = $bottom5QuestionsTempArr;
					}
					$Pass_Data["data"]["bottom5Questions"] = $bottom5QuestionsArr;
				}else{
					$Pass_Data["data"]["bottom5Questions"] = '';
				}

				$valid = ['status' => "true","statuscode" => 200,'response' =>$Pass_Data];
				$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
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