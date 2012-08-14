<?php 
class Home extends CI_Controller{
	public function __construct(){
		parent::__construct();
	}
	public function index(){
		//index.php/home
		echo "Hello World!";
	}
	public function hello(){
		//index.php/home/hello
		//echo "Xin chao";
		$data['title'] = "Hello, World!";
		$data['info'] = array(
			"name" => "kenny",
			"age"  => "15",
			"job"  => "teacher"
			
		);
		$this->load->view('home.php', $data);
	}
	public function welcome($p,$u){
		//index.php/home/welcome/mr/nhan
		echo "Xin chao $p, $u";
	}
	public function testmodel(){
		$this->load->Model("Muser");
		$data = $this->Muser->listall();
		echo "<pre>";
		print_r($data);
		echo "</pre>";
	}
}
