<?php 

// include the session
include "partials/session.php";

// get varibles for the view
$name = "Salvi";
$email = "salvi@techlaunch.io";
$phone = "9990001123";

// check if the picture file exists
$picture = file_exists("images/$username.jpeg") ? "$username.jpeg" : "no-profile.jpg";

// include the view
include "views/profile.tpl";
