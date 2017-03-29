<!DOCTYPE html>
<html lang="fr">
	<?php require("content_php/head.php") ?>
<body>
	<?php 
		require ("content_php/nav.php"); 
		require ("content_php/php_connexion.php"); 
	?>

	<!-- Début de la Section -->
	<section class="galerie">
		<div class="galerie-photos" align="center">
		<?php 
				//Récupération des infos
				$reponse = $bdd->query('SELECT * FROM galerie ');
				$users = array();

				while ($donnees = $reponse->fetch())
				{
						echo '<img src="'.$donnees["url_img"].'" alt="'.$donnees["nom_img"].'">';
				} 
		?>
		</div>
	</section>
	<?php require('content_php/footer.php'); ?>
	<?php require('content_php/script.php'); ?>
</body>
</html>
</html>