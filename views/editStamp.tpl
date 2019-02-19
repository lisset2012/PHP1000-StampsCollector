<?php include "partials/header.tpl"; ?>



<section class="content">
<h1>Edit a stamp</h1>

<form action="submitEditStamp.php" method="POST">

	<label for="name">Name</label><br>
	<input id="name" type="text" name="name" required>
	<br><br>

	<label for="album">Album</label><br>
	<input id="album" type="text" name="album" required>
	<br><br>

	<label for="year">Year</label><br>
	<input id="year" type="number" name="year" required>
	<br><br>

	<label for="description">Description</label><br>
	<input id="description" type="text" name="description" required>
	<br><br>

	<label for="collection">Collection</label><br>
	<input id="collection" type="text" name="collection" required>
	<br><br>

	<label for="size">Size</label><br>
	<input id="size" type="text" name="size" required>
	<br><br>

	<label for="quantity">Quantity</label><br>
	<input id="quantity" type="number" name="quantity" required>
	<br><br>

	
	<button type="submit">Update</button>
</form>
</section>


<?php include "partials/footer.tpl"; ?>