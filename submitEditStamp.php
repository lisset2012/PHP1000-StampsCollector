<?php 

// include the session
// include "partials/session.php";

// include the stamp model
include "models/stamp.php";

// get the params from post
$id = $_POST["id"];
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
if(empty($album)) die("You need to pass an album");
if(empty($quantity)) die("You need to pass a quantity");

// update the stamp in the database
updateStamp($id, $name, $album, $year, $description, $collection, $size, $quantity);

// redirect to the table
header("Location: stamp.php");