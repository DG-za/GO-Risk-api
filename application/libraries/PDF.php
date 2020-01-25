<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once "application/libraries/PDF/tfpdf/tfpdf.php";
class PDF extends tFPDF{
	function __construct(){
		parent::__construct();
	}
}
