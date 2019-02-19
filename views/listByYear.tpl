<?php include "partials/header.tpl"; ?>
<section class="content">
<h1>Listing by year</h1>

<table border="1">
	<tr>
        <th>Year</th>
		<th>Name</th>
		<th>Album</th>
		
		<th>Description</th>
		<th>Collection</th>
		<th>Size</th>
		<th>Quantity</th>
		<th>Actions</th>
	</tr>
	<?php foreach ($stampsByYear as $stamp) { ?>
	<tr>
        <td><?= $stamp["year"] ?></td>
		<td><?= $stamp["name"] ?></td>
		<td><?= $stamp["album"] ?></td>
		
		<td><?= $stamp["description"] ?></td>
		<td><?= $stamp["collection"] ?></td>
		<td><?= $stamp["size"] ?></td>
		<td><?= $stamp["quantity"] ?></td>
		<td>
			<a href="stampCard.php?id=<?= $stamp["id"] ?>">Select</a>
			
		</td>
	</tr>
	<?php } ?>
</table>
</section>


<?php include "partials/footer.tpl"; ?>