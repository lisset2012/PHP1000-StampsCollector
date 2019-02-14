<?php include "partials/header.tpl"; ?>

<h1>Add a new student</h1>

<form action="submitAddStudent.php" method="POST">
	<label for="name">Student name</label><br>
	<input id="name" type="text" name="name" required>
	<br><br>

	<label for="year">Year of born</label><br>
	<input id="year" type="number" name="year" required>
	<br><br>

	<label for="class">Class taking</label><br>
	<input id="class" type="text" name="class" required>
	<br><br>

	<a href="students.php">Go back</a>
	<button type="submit">Save</button>
</form>

<?php include "partials/footer.tpl"; ?>