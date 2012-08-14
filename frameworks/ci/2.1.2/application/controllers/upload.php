<?php

class Upload extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this -> load -> helper(array('form', 'url'));
		$this -> load -> helper('language');
		//$this->load->library('javascript');  
		//$this->load->library('jquery');
		//$this->load->library('javascript');
	}

	function index() {
		//$data['library_src'] = $this->jquery->script();
		//$data['script_head'] = $this->jquery->_compile();
		$data['error'] ='';
		$this -> load -> view('upload_form', $data);
	}

	function do_upload() {
		$config['upload_path'] = './uploads/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size'] = '100';
		$config['max_width'] = '1920';
		$config['max_height'] = '1920';

		$this -> load -> library('upload', $config);
		$e = "";
		$name = "";
		if (isset($_POST['name'])) {
			$data['name'] = $_POST['name'];
		}
		if (!$this -> upload -> do_upload('avatar')) {
			$e = $this -> upload -> display_errors();
			if ($e == "<p>" . lang('upload_no_file_selected') . "</p>") {
				$e = "";
			}
			$data['error'] = $e;
		} else {
			$data['upload_data'] = $this -> upload -> data();
		}

		$this -> load -> view('upload_form', $data);

	}

}
?>
