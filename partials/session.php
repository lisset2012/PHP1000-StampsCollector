<?php 

// start the session
session_start();

// do not allow user unregistered
if( ! isset($_SESSION["name"])) {
	header("Location: login.php");
	exit;
}

// get the session into variables
$username = $_SESSION["name"];
