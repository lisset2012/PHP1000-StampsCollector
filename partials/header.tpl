<?php $pageName = ucfirst(str_replace(".php", "", basename($_SERVER["PHP_SELF"]))); ?>

<!DOCTYPE html>
<html>
<head>
	<title><?= $pageName ?></title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
	<!-- HEADER -->
	<header>
		<nav>
            <ul>
                <li><a href="home.php" <?php if($pageName=="Home") echo 'class="active"'; ?>>HOME</a></li>
                <li><a href="addStamp.php" <?php if($pageName=="addStamp") echo 'class="active"'; ?>>ADD NEW STAMP</a></li>
                <li><a href="listByYear.php" <?php if($pageName=="listByYear") echo 'class="active"'; ?>>LIST BY YEAR</a></li>
                
                <li><a href="submitLogout.php" class="logout">LOGOUT</a></li>
                
            </ul>
        </nav>
                
        
		
	</header>
