<?php 
class Muser extends CI_Model{
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function listall(){
		$this->db->where("level !=", "2");
		$result = $this->db->get("user");
		//return $result->row_array();
		//$this->db->insert($table,$data);
		//$this->db->update($table,$data);
		//$this->db->delete($table);
		return $result->result_array();
	}
}
