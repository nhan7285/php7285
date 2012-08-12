<?php
class Model extends database{
	public $_select="*";
	public $_where;
	public $_limit;
	public $_order;
	
	public function __construct(){
		$this->connect();
	}
	public function insert($table,$data){
		$col=implode(",",array_keys($data));
		$arr=array_values($data);
		foreach($arr as $arr2){
			$arr3[]="'$arr2'";
		}
		$val=implode(",",$arr3);
		$sql="insert into $table($col) values($val)";
		$this->query($sql);
	}
	
	public function where($data){
		if(is_array($data)){
			foreach($data as $col=>$val){
				$arr[]="$col $val";
			}
			$this->_where=implode(" and ",$arr);
		}else{
			$this->_where=$data;
		}
	}
	public function update($table,$data){
		foreach($data as $col => $val){
			$arr[]="$col='$val'";
		}
		$str=implode(",",$arr);
		if($this->_where){
			$sql= "update $table set $str where $this->_where";
		}else{
			$sql= "update $table set $str";
		}
		$this->query($sql);
	}
	public function delete($table){
		if($this->_where){
			$sql= "delete from $table where $this->_where";
		}else{
			$sql= "delete from $table";
		}
		$this->query($sql);
	}
	public function select($col){
		if($col){
			$this->_select=$col;
		}
	}
	public function order($col,$type="asc"){
		if($col){
			$this->_order="order by $col $type";
		}
	}
	public function limit($start=0,$total){
			$this->_limit="limit $start,$total";
	}
	public function getdata($table){
		if($this->_where){
			$where="where $this->_where";
		}else{
			$where="";
		}	
		$sql="select $this->_select from $table $where $this->_order $this->_limit";
		$this->query($sql);
	}
}