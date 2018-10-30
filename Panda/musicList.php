<?php

  require_once('connect.php');
	$sql ="select id,name,musicName from music_list";
	$query=mysqli_query($con,$sql);
	
	if($query&& mysqli_num_rows($query)){
		while($row=mysqli_fetch_assoc($query)){
			$data[]=$row;
		}
		echo json_encode($data);
	}
?>