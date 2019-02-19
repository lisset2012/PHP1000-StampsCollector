<?php 

// include the session
// include "partials/session.php";

// include the stamp model
include "models/stamp.php";

// get the class filter
// $year = isset($_GET["year"]) ? $_GET["year"] : "";

// get the list of stamps
// if ($class) $stamps = getStampsByClass($class);
// else $stamps = getAllStamps();
// $stampsByYear = $year ? getStampsByYear($year) : getAllStamps();
$stampsByYear = getStampsByYear();

// include the view
include "views/listByYear.tpl";