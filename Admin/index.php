<?php SESSION_START();
if (!isset($_SESSION['infos_user']['token'])) {
 header('Location: login.php');
}
?>
	<!DOCTYPE html>
	<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Base d'Administration</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

		<!-- Material Icon -->
		<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

		<!-- Liens vers mes CSS -->
		<link type="text/css" rel="stylesheet" href="css/materialize.css"/>
		<link type="text/css" rel="stylesheet" href="css/styles.css"/>

	</head>
	<body>

		<ul id="slide-out" class="side-nav fixed">
		    <li>
			    <div class="userView">
			      <div class="background">
			        <img class="bg" src="<?php echo $_SESSION['infos_user']['pp']; ?>">
			      </div>
			      <a href="#!user"><img class="circle" src="<?php echo $_SESSION['infos_user']['pp']; ?>"></a>
			      <a href="#!name"><span class="white-text name"><?php echo $_SESSION['infos_user']['prenom'].' '.$_SESSION['infos_user']['nom']; ?></span></a>
			      <a href="#!email"><span class="white-text email"><?php echo $_SESSION['infos_user']['email']; ?></span></a>
			    </div>
		    </li>
		    <li>
		    	<a href="#!" id="btn_home" ><i class="material-icons">home</i>Accueil</a>
	    	</li>
		    <li>
		    	<a href="#!" id="btn_photos" ><i class="material-icons">burst_mode</i>Photos</a>
	    	</li>
		    <li>
		    	<a href="#!" id="btn_produits" ><i class="material-icons">dashboard</i>Produits</a>
	    	</li>
		    <li>
		    	<a href="#!" id="btn_commandes" ><i class="material-icons">shopping_basket</i>Commandes</a>
	    	</li>
		    <li>
		    	<a class="waves-effect" href="#!" id="btn_users" ><i class="material-icons">supervisor_account</i>Utilisateurs</a>
	    	</li>
	    	<li>
	    		<a class="waves-effect waves-light btn-large deco" href="deconnexion.php">déconnexion</a>
	    	</li>
	  </ul>
	  <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>

	  	<div class="preview">
	  		<section id="home">
		  		<h3>Bonjour, Mr <?php echo $_SESSION['infos_user']['nom']; ?> ! </h3>
		  		<?php 
		  			if($_SESSION['infos_user']["password"] == "c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35"){
				?>
				<div class="row" id="changing">
				    <div class="col s12 m6">
				      <div class="card">
				        <div class="card-content">
								<h5>Veuillez changer votre mot de passe :</h5>
								<input id="password" placeholder="Nouveau mot de passe" type="password" class="validate">
								<input id="re_password"  placeholder="Re-taper votre nouveau mot de passe" type="password" class="validate">
								<a id="change_password" class="waves-effect waves-light btn-large"><i class="material-icons left">done</i>CHANGER</a>
					        </div>
					      </div>
					    </div>
					  </div>
  				<?php
		  			}
		  		 ?>
		  	</section>

		  	<section id="photos" style="display: none;">
		  		<h3>Photos</h3>
		  	</section>
		  	<section id="produits" style="display: none;">
		  		<h3>Produits</h3>
		  	</section>
		  	<section id="commandes" style="display: none;">
		  		<h3>Commandes</h3>
		  	</section>
		  	<section id="users" style="display: none;">
		  		<h3>Users</h3>
		  	</section>
	  	</div>

		<!-- Liens vers mes Scripts -->
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="js/materialize.js"></script>
		<script type="text/javascript" src="js/main.js"></script>
	</body>
	</html>