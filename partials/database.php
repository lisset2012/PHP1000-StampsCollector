<?php

// add the db configs params 
include "configs/db.php";

// connect to the database, save the connection in a variable
$conn = new mysqli($host, $user, $password, $database);
