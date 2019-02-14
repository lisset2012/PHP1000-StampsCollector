<?php 

// include the session
include "partials/session.php";

// include the student model
include "models/student.php";

// get the class filter
$class = isset($_GET["class"]) ? $_GET["class"] : "";

// get the list of students
// if ($class) $students = getStudentsByClass($class);
// else $students = getAllStudents();
$students = $class ? getStudentsByClass($class) : getAllStudents();

// include the view
include "views/students.tpl";