<?php
$muser = new Model_User;
$helper = new Helper_Paging($config, $muser);
$data["users"] = $muser -> listuser();
$data['pages'] = $helper -> getPageLinks('index.php?module=user&act=list');
loadview("user/list_view", $data);
