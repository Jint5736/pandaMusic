<?PHP

	header("Content-type: text/html; charset=utf-8");
	$con = mysqli_connect('localhost','root','');
	mysqli_select_db($con,'ajaxMusic2');
	mysqli_query($con,'set names utf8');

?>