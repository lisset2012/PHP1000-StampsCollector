<?php 

function getAllStudents() {
	// include the database
	include "partials/database.php";

	// call the database
	return $conn->query("SELECT * FROM student ORDER BY name ASC");
}

function getStudentsByClass($class) {
	// include the database
	include "partials/database.php";

	// call the database
	return $conn->query("SELECT * FROM student WHERE class = '$class'");
}
