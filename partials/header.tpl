<?php $pageName = ucfirst(str_replace(".php", "", basename($_SERVER["PHP_SELF"]))); ?>

<!DOCTYPE html>
<html>
<head>
	<title><?= $pageName ?></title>
	<link rel="stylesheet" type="text/css" href="css/styles.css"/>
</head>
<body>
	<!-- HEADER -->
	<header>
		<b>MY PAGE</b>
		<div id="menu">
			<a href="home.php" <?php if($pageName=="Home") echo 'class="active"'; ?>>Home</a> | 
			<a href="students.php" <?php if($pageName=="Students") echo 'class="active"'; ?>>Students</a> | 
			<a href="profile.php" <?php if($pageName=="Profile") echo 'class="active"'; ?>>Profile</a> | 
			<a href="about.php" <?php if($pageName=="About") echo 'class="active"'; ?>>About</a>
			<a href="submitLogout.php" class="logout">Logout</a>
		</div>
	</header>
