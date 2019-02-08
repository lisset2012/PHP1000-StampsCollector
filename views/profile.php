<?php include "partials/header.php"; ?>

<h1>Welcome to my profile</h1>

<p>Here is my profile you can read about my achievements.</p>

<div>
	<img class="profile" src="images/<?= $picture ?>" alt="<?= $name ?>"/>
	<h2><?= $name ?></h2>
	<p><?= $email ?></p>
	<p><?= $phone ?></p>
</div>

<form action="submitUpload.php" method="POST" enctype="multipart/form-data">
	<input type="file" name="profile" required/><br>
	<button type="submit">Upload</button>
</form>

<?php include "partials/footer.php"; ?>
