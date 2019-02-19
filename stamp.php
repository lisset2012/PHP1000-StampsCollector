<?php 

// include the session
// include "partials/session.php";

// include the stamp model
include "models/stamp.php";

// get the class filter
$name = isset($_GET["name"]) ? $_GET["name"] : "";

// get the list of stamps
// if ($class) $stamps = getStampsByClass($class);
// else $stamps = getAllStamps();
$stamps = $name ? getStampsByName($name) : getAllStamps();

// include the view
include "views/stamp.tpl";