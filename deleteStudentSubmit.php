<?php

// include the session
include "partials/session.php";

// include the student model
include "models/student.php";

// get the ID to delete
$id = $_GET["id"];

// delete the student
deleteStudent($id);

// redirect to the table
header("Location: students.php");