<!DOCTYPE html>
<html lang="fr">
	<?php require("content_php/head.php") ?>
<body>
	<?php require ("content_php/nav.php"); ?>
	<!-- Début de la Section -->
	<section class="contact">
		<h3 class="gris bold">Nous contacter</h3>
		<p class="gris">Vous souhaitez obtenir des informations sur un produit en particulier, sur une compatibilité de matériel ? <br>Vous avez une commande en cours et voulez la modifier ? 
		<br>Une demande de retour à effectuer ?</p>
		<form>
			<div class="row">
				<div class="contact-left">
					<input type="text" placeholder="Prénom">
					<input type="text" placeholder="Nom">
					<input type="email" placeholder="E-Mail">
				</div>
				<div class="contact-right">
					<textarea placeholder="Message"></textarea>
					<button type="submit">Envoyer</button>
				</div>	
			</div>
		</form>
	</section>
	<!-- FIN DE LA SECTION -->
	<?php require('content_php/footer.php'); ?>
	<?php require('content_php/script.php'); ?>
</body>
</html>
</html>