<?php

function checkUserCredentials($pUser, $pPass) {
	// include the database
	include "partials/database.php";

	// get hashed password
	$hashedPass = md5($pPass);

	// call the database
	$response = $conn->query("SELECT * FROM users WHERE username = '$pUser' AND password = '$hashedPass'");
	return $response->num_rows;
}