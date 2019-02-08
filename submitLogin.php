<?php

$user = $_POST["user"];
$pass = $_POST["pass"];

//check if the user/pass are correct
if ($user == "admin" && $pass == "pass1234") {
	// create session
	session_start();
	$_SESSION["name"] = $user;
	// redirect to home page
	header("Location: home.php");
} else {
	// redirect to login with error
	header("Location: login.php?error=1");
}