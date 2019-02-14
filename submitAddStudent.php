<?php 

// include the session
include "partials/session.php";

// include the student model
include "models/student.php";

// get the params from post
$name = $_POST["name"];
$year = $_POST["year"];
$class = $_POST["class"];

// validate year born
$older = Date("Y") - 65;
$younger = Date("Y") - 18;
if($year < $older || $year > $younger) die("Wrong year you are too old or too young");
if(empty($name)) die("You need to pass a name");
if(empty($class)) die("You need to pass a class");

// save new student into the databas
addNewStudent($name, $year, $class);

// redirect to the table
header("Location: students.php");