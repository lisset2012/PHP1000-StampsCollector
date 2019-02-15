<?php 

// include the session
include "partials/session.php";

// get the student ID from the URL
$id = $_GET['id'];

// include the model
include "models/student.php";

// get the student's data
$student = getStudentById($id);

// include the view
include "views/editStudent.tpl";