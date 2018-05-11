<?php 
function isLoggedIn()
{

	if(isset($_SESSION["username"]) && !empty($_SESSION["username"]))
	{
		return true;
	}
	return false;
}
 