<?php
class Model_User extends Model{
	protected $_table="user";
	public function __construct(){
		parent::__construct();
	}
	public function listuser(){
		$this->order("id","desc");
		$this->getdata($this->_table);
		return $this->fetchAll();
	}
	public function getTotalRecords(){
		$this->getdata($this->_table);
		return $this->num_rows();
	}
	public function listuser2(){
		$this->query("select * from user order by id desc");
		return $this->fetchAll();
	}
	public function check_username($username,$id=""){
		if($id != ""){
			$where=array(
					"username" => "='$username'",
					"id"       => "!=$id"
			);
		}else{
			$where="username='$username'";
		}
		$this->where($where);
		$this->getdata($this->_table);
		if($this->num_rows() == 1){
			return FALSE;
		}else{
			return TRUE;
		}
	}
	public function insert_user($data){
		$this->insert($this->_table,$data);
	}
	public function delete_user($id){
		$this->where("id=$id");
		$this->delete($this->_table);
	}
	public function getuser($id){
		$this->where("id = $id");
		$this->getdata($this->_table);
		return $this->fetchone();
	}	
	public function update_user($data,$id){
		$this->where("id=$id");
		$this->update($this->_table,$data);
	}
}