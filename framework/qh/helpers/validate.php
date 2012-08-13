<?php
class Helper_Validate{
	public $_err=array();
	
	public function check_empty($data,$loi){
		if($data == ""){
			$this->_err[]=$loi;
		}
	}
	public function notmatches($data1,$data2,$loi){
		if($data1 != $data2){
			$this->_err[]=$loi;
		}
	}
	
	public function user_registered($user,$loi){
		$muser=new Model_User;
		if($muser->check_username($user) == FALSE){
			
			$this->_err[]=$loi;
		}
	}
	
	public function valid(){
		if($this->_err[0] != ""){
			return FALSE;
		}else{
			return TRUE;
		}
	}
	public function getmess(){
		return $this->_err;
	}
}