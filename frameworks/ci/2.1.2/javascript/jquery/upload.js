$(document).ready(function(){
	$("#addImage").click(function() {
		addImage();
		return false;
	});
});
i =3;
function addImage() {
	i++;
	$html = "<label>Image "+i+": </label> <input type='text' name='name[]' id='name' size='20'/> <input type='file' name='avatar[]' size='20' /><br />";
	$("#images").append($html);
}