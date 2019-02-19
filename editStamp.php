<?php 

// include the session
// include "partials/session.php";

// get the stamp ID from the URL
$id = $_GET['id'];

// include the model
include "models/stamp.php";

// get the stamp's data
$stamp = getStampById($id);

// include the view
include "views/editStamp.tpl";