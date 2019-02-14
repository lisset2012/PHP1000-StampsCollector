<?php include "partials/header.tpl"; ?>

<h1>Edit a student</h1>

<form action="submitEditStudent.php" method="POST">
	<input type="hidden" name="id" value="<?= $student['id'] ?>">

	<label for="name">Student name</label><br>
	<input id="name" type="text" name="name" value="<?= $student['name'] ?>" required>
	<br><br>

	<label for="year">Year of born</label><br>
	<input id="year" type="number" name="year" value="<?= $student['year'] ?>" required>
	<br><br>

	<label for="class">Class taking</label><br>
	<input id="class" type="text" name="class" value="<?= $student['class'] ?>" required>
	<br><br>

	<a href="students.php">Go back</a>
	<button type="submit">Update</button>
</form>

<?php include "partials/footer.tpl"; ?>