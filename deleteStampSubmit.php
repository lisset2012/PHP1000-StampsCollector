<?php

// include the session
// include "partials/session.php";

// include the stamp model
include "models/stamp.php";

// get the ID to delete
$id = $_GET["id"];

// delete the stamp
deleteStamp($id);

// redirect to the table
header("Location: stamp.php");