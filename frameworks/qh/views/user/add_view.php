<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add User</title>
</head>

<body>
	<?php
		if($data['error'] != ""){
			echo "<ul>";
			foreach($data['error'] as $err){
				echo "<li>$err</li>";
			}
			echo "</ul>";
		}
	?>
	<div><a href="index.php?module=user&act=list">List Users</a></div><br/>
	<form action="index.php?module=user&act=add" method="post">
    Level: <select name="level">
    	<option value="1">Member</option>
        <option value="2">Administrator</option>
    </select><br />
	Username: <input type="text" name="txtuser" size="30" /><br />
    Password: <input type="password" name="txtpass" size="30" /><br />
    Re-password: <input type="password" name="txtpass2" size="30" /><br />
    <input type="submit" name="ok" value="Submit" />
	</form>
	
</body>
</html>
