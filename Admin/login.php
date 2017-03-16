<?php SESSION_START();
if (isset($_SESSION['infos_user']['token'])) {
 header('Location: index.php');
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>Connexion - Admin</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<!-- Material Icon -->
	<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<!-- Liens vers mes CSS -->
  <link type="text/css" rel="stylesheet" href="css/styles.css"/>
	<link type="text/css" rel="stylesheet" href="css/materialize.css"/>
</head>
<body class="login">
	<div class="connect row">
    		<form class="col s12" action="login_process.php" method="post">
      			<div class="row">
                <img class="logo" src="img/logo.svg" alt="">
        				<div class="input-field col s12">
          					<i class="material-icons prefix">account_circle</i>
          					<input id="icon_prefix" name="id" type="text" required class="validate">
          					<label for="icon_prefix">Identifiant</label>
        				</div>
        				<div class="input-field col s12">
          					<i class="material-icons prefix">lock</i>
          					<input id="icon_prefix" name="pass" type="password" required class="validate">
          					<label for="icon_prefix">Mot de passe</label>
        				</div>
        				<button class="btn waves-effect waves-light" type="submit" name="action">Connexion</button>
        			</div>
        		</form>
        	</div>
        

    	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
     	<script type="text/javascript" src="js/materialize.js"></script>
     	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>