<?php

// get user info from post
$user = $_POST["user"];
$pass = $_POST["pass"];

// include the model
include "models/users.php";

// check combination on the database
$isValidUser = checkUserCredentials($user, $pass);

//check if the user/pass are correct
if ($isValidUser) {
	// create session
	session_start();
	$_SESSION["name"] = $user;
	// redirect to home page
	header("Location: home.php");
} else {
	// redirect to login with error
	header("Location: login.php?error=1");
}