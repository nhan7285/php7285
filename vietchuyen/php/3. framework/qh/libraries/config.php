<?php
$config["records"] = 3;
$config["length"] = 3;
class config{
	const HOST="localhost";
	const USER_HOST="root";
	const PASS_HOST="123";
	const DBNAME="vc_project";

}

function __autoload($url){
	$url=str_replace("Model","Models",$url);
	$url=str_replace("Helper","Helpers",$url);
	$url=str_replace("_","/",$url);
	$url=strtolower($url);
	require "$url.php"; 
}

function loadview($url,$data=""){
	require "views/$url.php";
}

function redirect($url){
	header("location:$url");
	exit();
}