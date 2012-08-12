<?php
$id=$_GET['uid'];
$data['error']="";
$muser=new Model_User;

if(isset($_POST['ok'])){
	$u=$p="";
	if($_POST['txtuser'] == NULL){
		$data['error'][]= "Please enter your username";
	}else{
		$u=$_POST['txtuser'];
	}
	if($_POST['txtpass'] != $_POST['txtpass2']){
			$data['error'][]="Your password and repassword are not matches";
	}else{
			if($_POST['txtpass'] != ""){
				$p=$_POST['txtpass'];
			}else{
				$p="none";
			}
	}
	$l=$_POST['level'];
	if($u && $p && $l){
		if($muser->check_username($u,$id) == FALSE){
			$data['error'][]="Your username has been registered, please try again";
		}else{
			$data_update=array(
					"username" => $u,
					"level"    => $l
			);
			if($p != "none"){
				$data_update['password']=$p;
			}
			$muser->update_user($data_update,$id);
			redirect("index.php?module=user&act=list");
		}
	}
}



$data['info']=$muser->getuser($id);
loadview("user/edit_view",$data);