<?php
$id=$_GET['uid'];
$muser=new Model_User;
$muser->delete_user($id);
redirect("index.php?module=user&act=list");