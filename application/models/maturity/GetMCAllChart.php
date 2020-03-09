<?php
require_once APPPATH . '/libraries/REST_Controller.php';
require_once APPPATH . '/libraries/JWT.php';
use \Firebase\JWT\JWT;

class GetMCAllChart extends REST_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('maturity/GetMCAllChart_Model');
	}
	
	public function index_get(){

		$selectedSessionId = $this->get('selectedSessionId');

		$elementsArr = $this->GetMCAllChart_Model->getAllData($selectedSessionId);

		$productsTitles = array();
		$productsTitlesnew = array();
		foreach ($elementsArr as $product) {
			$productsTitles[$product->category][$product->element_id][$product->answer][] = $product;
		}

		$productsTitlesnew['success'] = true;
		$productsTitlesnew['data'] = $productsTitles;

		$this->set_response($productsTitlesnew, REST_Controller::HTTP_OK);
	}

}