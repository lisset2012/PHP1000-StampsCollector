<?php

function getAllStudents() {
	// include the database
	include "partials/database.php";

	// call the database
	return $conn->query("SELECT * FROM student ORDER BY name ASC");
}

function getStudentById($id) {
	// include the database
	include "partials/database.php";

	// call the database and get the mysqli object
	$response = $conn->query("SELECT * FROM student WHERE id = '$id'");

	// return the first and only row
	return $response->fetch_assoc();
}

function getStudentsByClass($class) {
	// include the database
	include "partials/database.php";

	// call the database
	return $conn->query("SELECT * FROM student WHERE class = '$class'");
}

function addNewStudent($name, $year, $class) {
	// include the database
	include "partials/database.php";

	// call the database
	$conn->query("INSERT INTO student (name,year,class) VALUES ('$name','$year','$class')");
}

function updateStudent($id, $name, $year, $class) {
	// include the database
	include "partials/database.php";

	// call the database
	$conn->query("UPDATE student SET name='$name', year='$year', class='$class' WHERE id='$id'");
}

function deleteStudent($id) {
	// do not allow blank values
	if(empty($id)) return;

	// include the database
	include "partials/database.php";

	// call the database
	$conn->query("DELETE FROM student WHERE id='$id'");
}
