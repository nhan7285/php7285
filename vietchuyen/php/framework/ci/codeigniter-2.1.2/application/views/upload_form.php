<html>
	<head>
		<title>Upload Form</title>
		<style>
			label {
				width: 100px;
				display: inline-block;
			}
			form {
				width: 500px;
			}
		</style>
		<script type="text/javascript" src="<?php echo base_url() ?>javascript/jquery/jquery.js"></script>
		<script type="text/javascript" src="<?php echo base_url() ?>javascript/jquery/upload.js"></script>
	</head>
	<body>
<?php
if (isset($error))
	echo $error;
 ?>
		<?php echo form_open_multipart('upload/do_upload'); ?>
		<fieldset>
			<legend><a href="" id="addImage">Add</a></legend>
			<div id="images">
			<label>Image 1:</label>
			<input type="text" name="name" id="name" size="20"/>
			<input type="file" name="avatar" size="20" />
			<br />
			<label>Image 2:</label>
			<input type="text" name="name" id="name" size="20"/>
			<input type="file" name="avatar" size="20" />
			<br />
			<label>Image 3:</label>
			<input type="text" name="name" id="name" size="20"/>
			<input type="file" name="avatar" size="20" />
			<br />
			</div><br />
			<input type="submit" value="upload" />
		</fieldset>
		</form>
		<ul>
<?php 
if(isset($name)){
	echo "Your name: ".$name;
}
if(isset($upload_data)){
foreach ($upload_data as $item => $value):?>
<li><?php echo $item; ?>: <?php echo $value; ?></li>
<?php endforeach; } ?>
</ul>
	</body>
</html>