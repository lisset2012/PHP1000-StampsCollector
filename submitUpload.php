<?php

// check if the image exist
if( ! isset($_FILES["profile"])) die("Error image was not submitted");

// include the session
include "partials/session.php";

// get the path to the temporal image
$tmpFile = $_FILES["profile"]["tmp_name"];

// get the image extension
$tmpExt = str_replace("image/", "", $_FILES["profile"]["type"]);

// copy the image to the final location
copy($tmpFile, "images/$username.$tmpExt");

// redirect to profile
header("Location: profile.php");
