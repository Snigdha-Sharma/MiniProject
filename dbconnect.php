<?php

function Openconn(){
	$conn = mysqli_connect("localhost","root","","counselling");
	if(!$conn)
	{
		echo mysqli_connect_error();
	}
	return $conn;
}

function Closecon()
{
	$conn -> close();
}

?>