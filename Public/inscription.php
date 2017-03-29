<?php session_start(); 
      if(isset($_SESSION['user']["token"])) {
        header('Location: index.php');
      }
?>
<!DOCTYPE html>
<html lang="fr">
<?php require("content_php/head.php") ?>
<body>
	<?php require("content_php/nav.php"); ?>
	<!-- Début de la Section -->
    	<section class="inscription">
        		<h3 class="gris bold">inscription</h3>
        		<p>Vous souhaitez rejoindre la communauté ACC16, c'est ici que ça se passe ! </p>
        		<form action="content_php/inscription_traitement.php" method="post">
            		<div class="row">
                			<div class="form-inscription">
                   				<div class="inscription-left">
                      					<input class="fdgris" type="text" name="second_name" placeholder="Nom">
                      					<input class="fdgris" type="email" name="email" placeholder="E-Mail">
                      					<input class="fdgris" type="password" name="mdp" placeholder="Mot de passe">
                                <input class="fdgris" type="text" name="adress" placeholder="Adresse">
                   				</div>
                   				<div class="inscription-right">
                    					<input class="fdgris" type="text" name="first_name" placeholder="Prénom">
                     	 				<input class="fdgris" type="tel" name="phone" placeholder="Téléphone">
                              <input class="fdgris" type="date" name="birthday" placeholder="Date de naissance">
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
