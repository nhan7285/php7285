<?php
switch($_GET['act']){
	case "add":
	require "controllers/user/add.php";
	break;
	case "list":
	require "controllers/user/list.php";
	break;
	case "edit":
	require "controllers/user/edit.php";
	break;
	case "del":
	require "controllers/user/del.php";
	break;

}