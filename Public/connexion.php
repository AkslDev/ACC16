<?php session_start(); 
      if(isset($_SESSION['user']["token"])) {
        header('Location: index.php');
      }
?>
<!DOCTYPE html>
<html lang="fr">
<?php require("content_php/head.php") ?>
<body>
	<?php require ("content_php/nav.php"); ?>
	<!-- Début de la Section -->
  	<section class="connexion">
  	    	<h3 class="gris bold">connexion</h3>
  	    	<form action="content_php/login_traitement.php" method="post">
  	        		<div class="row">
  	            		<div class="form-connexion">
  	              			<div class="connexion-center">
                            <?php
                             if(isset($_GET["erreur"])){
                                ?>
                            <div class="callout alert">
                              <h5>Email et / ou mot de passe incorrect</h5>
                            </div>
                            <script>
                              setTimeout(function() {
                                $('.alert').fadeOut();
                              }, 4000);
                            </script>
                            <?php   
                              } ?>
  	                				<input class="fdgris" type="email" name="id" placeholder="E-Mail">
  	                				<input class="fdgris" type="password" name="pass" placeholder="Mot de passe">
  	               				<a class="rouge" href="forget.html">mot de passe oublié</a>
  	               		 		<button class="fdrouge blanc" type="submit">Se connecter</button>
  	              			</div>
  	            		</div>
  	       		 </div>
  	    	</form>
  	</section>
	<!-- Fin de la Section -->
	<?php require('content_php/footer.php'); ?>
	<?php require('content_php/script.php'); ?>
</body>
</html>
</html>
