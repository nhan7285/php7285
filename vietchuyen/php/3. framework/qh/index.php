<?php
require "libraries/config.php";
require "libraries/database.php";
require "libraries/model.php";
require "languages/lang_vn.php";
switch($_GET['module']){
	case "user":
	require "controllers/user/controller.php";
	break;
}

