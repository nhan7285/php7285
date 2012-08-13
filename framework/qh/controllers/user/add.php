<?php
$data['error'] = "";

if (isset($_POST['ok'])) {
	$u = $p = "";
	$help = new Helper_Validate;
	$help -> check_empty($_POST['txtuser'], $lang['err_empty_user']);
	$help -> check_empty($_POST['txtpass'], $lang['err_empty_pass']);
	$help -> notmatches($_POST['txtpass'], $_POST['txtpass2'], $lang['err_notmatches']);
	$help -> user_registered($_POST['txtuser'], $lang['err_user_registered']);
	
	if ($help -> valid() == FALSE) {
		$data['error'] = $help -> getmess();
	} else {
		$u = $_POST['txtuser'];
		$p = $_POST['txtpass'];
		$l = $_POST['level'];
		$muser = new Model_User;
		$data_insert = array("username" => $u, "password" => $p, "level" => $l);
		$muser -> insert_user($data_insert);
		redirect("index.php?module=user&act=list");
	}
}
loadview("user/add_view", $data);
