<?php 

// include the session
// include "partials/session.php";

// include the stamp model
include "models/stamp.php";

// get the params from post
$name = $_POST["name"];
$album = $_POST["album"];
$year = $_POST["year"];
$description = $_POST["description"];
$collection = $_POST["collection"];
$size = $_POST["size"];
$quantity = $_POST["quantity"];

// validate year born
// $older = Date("Y") - 65;
// $younger = Date("Y") - 18;
// if($year < $older || $year > $younger) die("Wrong year you are too old or too young");
if(empty($name)) die("You need to pass the name of the stamp");
if(empty($album)) die("You need to pass an album");
if(empty($quantity)) die("You need to pass a quantity");

// save new stamp into the database
addNewStamp($name, $album, $year, $description, $collection, $size, $quantity);

// redirect to the table
header("Location: stamp.php");