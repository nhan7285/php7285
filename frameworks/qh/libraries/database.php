<?php
class database{
	private $conn;
	private $result;
	public function connect(){
		$this->conn=mysql_connect(config::HOST,config::USER_HOST,config::PASS_HOST);
		mysql_select_db(config::DBNAME,$this->conn);
	}
	public function query($sql){
		if($this->conn){
			$this->result=mysql_query($sql);
		}
	}
	public function num_rows(){
		if($this->result){
			$row=mysql_num_rows($this->result);
		}else{
			$row=0;
		}
		return $row;
	}
	public function fetchone(){
		if($this->result){
			$row=mysql_fetch_assoc($this->result);
		}else{
			$row=0;
		}
		return $row;
	}
	public function fetchall(){
		if($this->result){
			while($data=$this->fetchone()){
				$row[]=$data;
			}
			return $row;
		}
	}
}