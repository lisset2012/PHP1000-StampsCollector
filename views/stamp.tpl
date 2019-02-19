<?php include "partials/header.tpl"; ?>
<section class="content">
<h1>List of stamps</h1>

<p>
	<a href="stamp.php">All</a> | 
	<a href="stamp.php?class=WEB1010">India</a> | 
	<a href="stamp.php?class=WEB1100">Nepal</a>
</p>



<table border="1">
	<tr>
		<th>Name</th>
		<th>Album</th>
		<th>Year</th>
		<th>Description</th>
		<th>Collection</th>
		<th>Size</th>
		<th>Quantity</th>
		<th>Actions</th>
	</tr>
	<?php foreach ($stamps as $stamp) { ?>
	<tr>
		<td><?= $stamp["name"] ?></td>
		<td><?= $stamp["album"] ?></td>
		<td><?= $stamp["year"] ?></td>
		<td><?= $stamp["description"] ?></td>
		<td><?= $stamp["collection"] ?></td>
		<td><?= $stamp["size"] ?></td>
		<td><?= $stamp["quantity"] ?></td>
		<td>
			<a href="editStamp.php?id=<?= $stamp["id"] ?>">&#9998; Edit</a>
			<a href="deleteStampSubmit.php?id=<?= $stamp["id"] ?>">&#10006; Delete</a>
		</td>
	</tr>
	<?php } ?>
</table>

<br>

<a href="addStamp.php">+ Add stamp</a>
</section>
<?php include "partials/footer.tpl"; ?>