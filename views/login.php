<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body style=text-align: "center";>
	<h1>Login</h1>

	<?php if($error) { ?>
		<p style="color:red">Username or password incorrect</p> 
	<?php } ?>

	<form action="submitLogin.php" method="post">
		<input type="text" name="user" placeholder="Enter your username" /><br>
		<input type="password" name="pass" placeholder="Enter your password" /><br>
		<button type="submit">Login</button>
	</form>
</body>
</html>