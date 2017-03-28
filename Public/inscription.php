<!DOCTYPE html>
<html lang="fr">
<?php require("content_php/head.php") ?>
<body>
	<?php require ("content_php/nav.php"); ?>
	<!-- Début de la Section -->
    	<section class="inscription">
        		<h3 class="gris bold">inscription</h3>
        		<p>Vous souhaitez rejoindre la communauté ACC16, c'est ici que ça se passe ! </p>
        		<form>
            		<div class="row">
                			<div class="form-inscription">
                   				<div class="inscription-left">
                      					<input class="fdgris" type="text" placeholder="Nom">
                      					<input class="fdgris" type="email" placeholder="E-Mail">
                      					<input class="fdgris" type="text" placeholder="Adresse">
                   				</div>
                   				<div class="inscription-right">
                      					<input class="fdgris" type="text" placeholder="Prénom">
                     	 				<input class="fdgris" type="tel" placeholder="Téléphone">
                     	 				<input class="fdgris" type="date" placeholder="Date de naissance">
                   				</div>
                  				<button class="fdrouge blanc" type="submit">s'inscrire</button>
               			 </div>    
            		</div>
        		</form>
    	</section>
	<!-- Fin de la Section -->
	<?php require('content_php/footer.php'); ?>
	<?php require('content_php/script.php'); ?>
</html>
</html>
