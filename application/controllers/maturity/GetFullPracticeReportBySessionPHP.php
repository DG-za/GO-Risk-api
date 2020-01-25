<?php
require_once APPPATH . '/libraries/REST_Controller.php';
use Interpid\PdfLib\Table;


class GetFullPracticeReportBySessionPHP extends CI_Controller {
	/***************************************************************
	*  Project Name : 4Xcellence Solutions
	*  Created By :   
	*  Created Date : 23-09-2019
	*  Description : A controller contain GetCategories related methods
	*  Modification History :
	*  
	***************************************************************/
	
	public function __construct() {
		parent::__construct();
		//$this->load->helper('check_token');		
		$this->load->library("PDF");		
		$this->load->model('maturity/GetFullPracticeReportBySession_model');
	}
	
	public function index(){
		$valid = ['status' => "true","statuscode" => 200,'response' =>"Token Valid"];
		$no_found = ['status' => "true","statuscode" => 200,'response' =>"No Record Found"];
		$invalid = ['status' => "true","statuscode" => 203,'response' =>"In-Valid token"];
		$not_found = ['status' => "true","statuscode" => 404,'response' =>"Token not found"];
		
		$message = 'Required field(s) user_id is missing or empty';
		$user_id = "1";
		$selectedSessionId = "59";
		if(isset($user_id)){
			
				$All_Category = $this->GetFullPracticeReportBySession_model->All_Category();
				$Pass_Data = array();
				if(!empty($All_Category)){
					foreach($All_Category as $catkey => $catValue){
						$elementArr=array();
						$Cat_ID=$catValue->id;
						$getElementsByCat_Result = $this->GetFullPracticeReportBySession_model->getElementsByCat_function($Cat_ID);
						if(!empty($getElementsByCat_Result)){
							foreach($getElementsByCat_Result as $elementkey => $elementValue){
								$elementTempArr=array();
								$questionArr=array();
								$answerArr=array();
								$desiredArr=array();
								$MCArr=array();
								$proofsArr=array();
								$Element_ID=$elementValue->id;
								$All_Questions = $this->GetFullPracticeReportBySession_model->Get_Quetions_by_Element_ID($Element_ID);
								if(!empty($All_Questions)){
									foreach($All_Questions as $questionskey => $questionsvalue){
										$questionTempArr=array();
										$questionTempArr = array("id" => $questionsvalue->id,"element" => $questionsvalue->element,"question" => $questionsvalue->question,"reactive" => $questionsvalue->reactive,"compliant" => $questionsvalue->compliant,"proactive" => $questionsvalue->proactive,"resilient" => $questionsvalue->resilient);
										$questionArr[]=$questionTempArr;
									}
								}else{
									$this->set_response($no_found, REST_Controller::HTTP_OK);
								}
								$All_Answer = $this->GetFullPracticeReportBySession_model->Get_Answer_by_Element_ID($Element_ID,$selectedSessionId);
								if(!empty($All_Answer)){
									$Q_id_Array = array();
									foreach($All_Answer as $answerkey => $answervalue){
										$answerTempArr=array();
										$answerTempArr = array("question" => $answervalue->question,"reactive" => $answervalue->n1,"compliant" => $answervalue->n2,"proactive" => $answervalue->n3,"resilient" => $answervalue->n4,"total" => $answervalue->total);
										$Q_id_Array[] = $answervalue->question;
										$answerArr[] = $answerTempArr;
									}
									$All_Question = $this->GetFullPracticeReportBySession_model->Get_Question_by_Element_ID($Element_ID);
									if(!empty($All_Question)){
										foreach($All_Question as $key => $value){
											if(!in_array($value->id,$Q_id_Array)){
												$answerTempArr = array("question" => $value->id,"reactive" => "0","compliant" => "0","proactive" => "0","resilient" => "0","total" => "0");
												$answerArr[] = $answerTempArr;
											}
										}
									}
								}else{
									$All_Question = $this->GetFullPracticeReportBySession_model->Get_Question_by_Element_ID($Element_ID);
									if(!empty($All_Question)){
										foreach($All_Question as $key => $value){
											$answerTempArr=array();
											$answerTempArr = array("question" => $value->id,"reactive" => "0","compliant" => "0","proactive" => "0","resilient" => "0","total" => "0");
											$answerArr[] = $answerTempArr;
										}
									}else{
										$this->set_response($no_found, REST_Controller::HTTP_OK);
									}
								}

								$All_Desired = $this->GetFullPracticeReportBySession_model->Get_Desired_by_Element_ID($Element_ID,$selectedSessionId);
								if(!empty($All_Desired)){
									foreach($All_Desired as $desiredkey => $desiredvalue){
										$desiredTempArr=array();
										$desiredTempArr[0]['name'] = 'resilient';
										$desiredTempArr[0]['value'] = $desiredvalue->n3;
										$desiredTempArr[1]['name'] = 'proactive';
										$desiredTempArr[1]['value'] = $desiredvalue->n2;
										$desiredTempArr[2]['name'] = 'compliant';
										$desiredTempArr[2]['value'] = $desiredvalue->n1;
									}
									$desiredArr = $desiredTempArr;
								}else{
									$desiredTempArr[0]['name'] = 'resilient';
									$desiredTempArr[0]['value'] = 0;
									$desiredTempArr[1]['name'] = 'proactive';
									$desiredTempArr[1]['value'] = 0;
									$desiredTempArr[2]['name'] = 'compliant';
									$desiredTempArr[2]['value'] = 0;
									$desiredArr = $desiredTempArr;
								}

								$All_MCAnswer = $this->GetFullPracticeReportBySession_model->Get_Structured_Answers_by_Element($Element_ID,$selectedSessionId);
								$Total_MCAnswers_By_Element = $this->GetFullPracticeReportBySession_model->Get_Total_Answers_by_Element($Element_ID,$selectedSessionId);
								$customArr = array('1','2','3','4');
								$elementsMCArr = [];
								if(!empty($All_MCAnswer)){

									/* Add matched elemets to the $elementsArr */			
									for($i=0; $i<4; $i++){
										if(isset($All_MCAnswer[$i]->answer)){
										$elementsMCArr[$i] = $All_MCAnswer[$i]->answer;
										}
									}

									/* Get total count of answers for this element */
									foreach($Total_MCAnswers_By_Element as $key => $value){
										$total = $value->total;
									}

									/* Build array for chart */			
									foreach($All_MCAnswer as $key => $value){
										$MCTEMPArr = array(
											"name" => $value->answer,
											// "count" => $value->count,
											// "sum" => $value->sum,
											"total" => $total,
											"count" => $value->value,
											// "value" => number_format(($value->sum/$total),1)
											"value" => number_format(($value->value/$total)*100,1)
										);
											// "value" => $value->count);
										$MCArr[] = $MCTEMPArr;
									}

									/* Adding Blank Json Object to main array */
									$customTempArr = array_diff($customArr, $elementsMCArr);
									foreach($customTempArr as $key => $value) {
										$MCMergeTempArr = array(
											"name" => $value,
											"total" => 0,
											"count" => 0,
											"value" => 0							
										);
										$MCArr[] =$MCMergeTempArr;
									} 

									/* Sorting Array in Ascending order like name wise */
									$price = array_column($MCArr, 'name');
									array_multisort($price, SORT_ASC, $MCArr);

								}else{
									$MCArr[0] = array("name" => 1,"value" => 0);
									$MCArr[1] = array("name" => 2,"value" => 0);
									$MCArr[2] = array("name" => 3,"value" => 0);
									$MCArr[3] = array("name" => 4,"value" => 0);
								}

								$All_Proof = $this->GetFullPracticeReportBySession_model->Get_Proof_by_Element_ID($Element_ID);
								$User_Count = $this->GetFullPracticeReportBySession_model->Get_User_count_by_Element_ID($Element_ID,$selectedSessionId);
								
								if(!empty($All_Proof)){
									foreach($All_Proof as $key => $value){
										$proofsTempArr = array();
										$Count_Result = $this->GetFullPracticeReportBySession_model->Get_Proof_count_by_Proof_ID($value->id,$selectedSessionId);
										$amount = 0;
										if(!empty($Count_Result)){
											$amount = $Count_Result[0]->count_id;
											if($User_Count[0]->count_user == 0){
												$user = 1;
											}else{
												$user = $User_Count[0]->count_user;
											}
										}
										$proofsTempArr = array("id" => $value->id,"element" => $value->element,"type" => $value->type,"proof" => $value->proof,"amount" => $amount,"user" => $user,"percent" => number_format((float)($amount/$user*100),1,'.',''));
										$proofsArr[] = $proofsTempArr;
									}
								}else{
									$this->set_response($no_found, REST_Controller::HTTP_OK);
								}
								$elementTempArr=array("id" => $elementValue->id,"name" => $elementValue->name,"category" => $elementValue->cat,"questions" => $questionArr,"answers" => $answerArr,"desired" => $desiredArr,"ratedMaturity" => $MCArr,"proofs" => $proofsArr);
								$elementArr[]=$elementTempArr;
							}
						}else{
							$this->set_response($no_found, REST_Controller::HTTP_OK);
						}
						$catArr=array("id" => $catValue->id,"name" => $catValue->name,"byline" => $catValue->byline,"image" => $catValue->image,"elements" => $elementArr);
						$Pass_Data["data"][] = $catArr;
					}
					//$this->set_response($Pass_Data, REST_Controller::HTTP_OK);
					$pdf = new tFPDF();
					$pdf->AddFont('DejaVu','','DejaVuSansCondensed.ttf',true);
					$pdf->SetFont('DejaVu','',14);
					$pdf->SetMargins(0,0);
					$pdf->SetTopMargin(0);
					$pdf->SetAutoPageBreak(true,0);
					$pdf->SetFillColor(242,242,242);
					$pdf->SetTextColor(102,103,102);
					$pdf->SetDrawColor(128,255,0);
					$pdf->SetLineWidth(0);
					$pdf->AddPage();
/*
					$width_cell=array(20,50,40,40,40);
					$pdf->SetFont('Arial','B',16);

					//Background color of header//
					$pdf->SetFillColor(193,229,252);

					// Header starts /// 
					//First header column //
					$pdf->Cell($width_cell[0],10,'ID',1,0,true);
					//Second header column//
					$pdf->Cell($width_cell[1],10,'NAME',1,0,true);
					//Third header column//
					$pdf->Cell($width_cell[2],10,'CLASS',1,0,true); 
					//Fourth header column//
					$pdf->Cell($width_cell[3],10,'MARK',1,0,true);
					//Third header column//
					$pdf->Cell($width_cell[4],10,'SEX',1,1,true); 
					//// header ends ///////

					$pdf->SetFont('Arial','',14);
					//Background color of header//
					$pdf->SetFillColor(235,236,236); 
					//to give alternate background fill color to rows// 
					$fill=false;

					/// each record is one row  ///
					foreach ($Pass_Data["data"][0]["elements"][0]["questions"] as $key => $value) {
					$pdf->Cell($width_cell[0],10,$value['question'],1,0,$fill);
					$pdf->Cell($width_cell[1],10,$value['reactive'],1,0,$fill);
					$pdf->Cell($width_cell[2],10,$value['compliant'],1,0,$fill);
					$pdf->Cell($width_cell[3],10,$value['proactive'],1,0,$fill);
					$pdf->Cell($width_cell[4],10,$value['resilient'],1,1,$fill);
					//to give alternate background fill  color to rows//
					$fill = !$fill;
					}
					/// end of records /// */
					$temptable='<table><tr><th>Question</th><th>Reactive</th><th>Compliant</th><th>Proactive</th><th>Resilient</th></tr>';
					foreach ($Pass_Data["data"][0]["elements"][0]["questions"] as $key => $value) {
						$temptable .='<tr><td>'.$value["question"].'</td><td>'.$value["reactive"].'</td><td>'.$value["compliant"].'</td><td>'.$value["proactive"].'</td><td>'.$value["resilient"].'</td></tr>';
					}
						
					$temptable .='</table>';
					$pdf->WriteHTML($temptable);
					$pdf->Output("gfhfgh.pdf","D");
				}else{
					$this->set_response($no_found, REST_Controller::HTTP_OK);
				}
		}else{
			$parameter_required_array = ['status' => "true","statuscode" => 404,'response' => $message];
			$this->set_response($parameter_required_array, REST_Controller::HTTP_NOT_FOUND);
		}
	}
}