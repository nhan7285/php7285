<?php 
class user extends CI_Controller{
	public function __construct(){
		parent::__construct();
	}
	public function index(){
		echo "Controller: User - Action: index";
	}
}
