<?php

function getAllStamps() {
	// include the database
	include "partials/database.php";

	// call the database
	return $conn->query("SELECT * FROM stamp ORDER BY name ASC");
}

function getStampById($id) {
	// include the database
	include "partials/database.php";

	// call the database and get the mysqli object
	$response = $conn->query("SELECT * FROM stamp WHERE id = '$id'");

	// return the first and only row
	return $response->fetch_assoc();
}

function getStampsByYear() {
	// include the database
	include "partials/database.php";

	// call the database
	return $conn->query("SELECT * FROM stamp ORDER BY year ASC");
}

function getStampsByName($name) {
	// include the database
	include "partials/database.php";

	// call the database
	return $conn->query("SELECT * FROM stamp WHERE name = '$name' ORDER BY name ASC");
}

function addNewStamp($name, $album, $year, $description, $collection, $size, $quantity) {
	// include the database
	include "partials/database.php";

	// call the database
	$conn->query("INSERT INTO stamp (name, album, year, description, collection, size, quantity) VALUES ('$name','$album','$year','$description', '$collection', '$size', '$quantity')");
}

function updateStamp($id, $name, $album, $year, $description, $collection, $size, $quantity) {
	// include the database
	include "partials/database.php";

	// call the database
	$conn->query("UPDATE stamp SET name='$name', album='$album', year='$year', description='$description', collection='$collection', size='$size', quantity='$quantity'  WHERE id='$id'");
}

function deleteStamp($id) {
	// do not allow blank values
	if(empty($id)) return;

	// include the database
	include "partials/database.php";

	// call the database
	$conn->query("DELETE FROM stamp WHERE id='$id'");
}
