<?php
$password='purva';
$hashed_password = password_hash($password, PASSWORD_DEFAULT);
if (password_verify($password,$hashed_password))
{
	
}
var_dump($hashed_password);
?>