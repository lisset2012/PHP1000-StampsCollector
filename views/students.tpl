<?php include "partials/header.tpl"; ?>

<h1>List of students</h1>

<p>
	<a href="students.php">All</a> | 
	<a href="students.php?class=WEB1010">WEB1010</a> | 
	<a href="students.php?class=WEB1100">WEB1100</a>
</p>

<?php if($class) { ?>
	<p>You are filtering by <?= $class ?></p>
<?php }else{ ?>
	<p>You are seeing all the students</p>
<?php } ?>

<table border="1">
	<tr>
		<th>Name</th>
		<th>Year Born</th>
		<th>Class</th>
	</tr>
	<?php foreach ($students as $student) { ?>
	<tr>
		<td><?= $student["name"] ?></td>
		<td><?= $student["year"] ?></td>
		<td><?= $student["class"] ?></td>
	</tr>
	<?php } ?>
</table>

<?php include "partials/footer.tpl"; ?>