<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="style.css" media="all" />
		<title>List Users</title>
	</head>

	<body>
		<form action="" method="get">
			<table align="center" border="1" width="600" cellpadding="3px;">
				<tr>
					<td colspan="5" align="left"><a href="index.php?module=user&act=add" class="button">Thêm User</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>Số dòng</label><input name="records" value="<?php echo $data['pages']['paging_info']['records']?>" size='5' class='number'/>&nbsp;&nbsp;&nbsp;
					<label>Số trang</label><input name="new_length" value="<?php echo $data['pages']['paging_info']['min_length'] ?>" size='5' class='number'/> &nbsp;&nbsp;&nbsp;
					<input type="hidden" name="module" value="user" />
					<input type="hidden" name="act" value="list" />
					<input type="submit" value="Submit" name="ok" />
					</td>

				</tr>
				<tr>
					<td align='center'>STT</td>
					<td>Username</td>
					<td>Level</td>
					<td>Edit</td>
					<td>Del</td>
				</tr>

				<?php
				$stt = $data['pages']['paging_info']['index'];
				foreach ($data['users'] as $item) {
					$stt++;
					echo "<tr>";
					echo "<td align='center'>$stt</td>";
					echo "<td>$item[username]</td>";
					if ($item['level'] == 1) {
						echo "<td>Member</td>";
					} else {
						echo "<td><font color='red'>Admin</font></td>";
					}
					echo "<td><a href='index.php?module=user&act=edit&uid=$item[id]'>Edit</a></td>";
					echo "<td><a href='index.php?module=user&act=del&uid=$item[id]'>Del</a></td>";
					echo "</tr>";
				}
				?>
			</table>
		</form>
		<br/>

		<div align="center">

			<?php
			echo "Tìm thấy " . $data['pages']['paging_info']['total'] . " kết quả / " . $data['pages']['paging_info']['total_page'] . " trang <br/><br/>";
			$SEP = "&nbsp;&nbsp;&nbsp;&nbsp;";
			foreach ($data['pages']['pages'] as $row) {
				foreach ($row as $page) {
					echo $page;
					echo $SEP;
				}
				echo "<br/>";
			}
			echo "<br/>";
			foreach ($data['pages']['page_controls'] as $control) {
				echo $control;
				echo $SEP;
			}
			?>
		</div>
	</body>
</html>
