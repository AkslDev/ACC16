<?php 
require('php/php_connexion.php');
if(isset($_POST['id']) && isset($_POST['pass']))
{
	 $id	= htmlentities($_POST['id']);
	 $pass 	= htmlentities($_POST['pass']);
	 $hash 	= hash("haval256,5",  $pass);

	 // Vérification des identifiants
	$req = $bdd->prepare('SELECT id FROM membres WHERE email = :email AND mdp = :pass');
	$req->execute(array(
	    'email' => $id,
	    'pass' => $hash));

	$resultat = $req->fetch();

	if (!$resultat)
	{
	   header('Location: login.php?erreur=login');
	}
	else
	{
	    //Récupération des infos
	    $reponse5 = $bdd->query('SELECT * FROM membres WHERE email="'.$id.'"');
	    while ($donnees5 = $reponse5->fetch())
	    {
	       $_SESSION['infos_user']['id'] 		= $id;
		   $_SESSION['infos_user']['token'] 	= $donnees5["token"];
		   $_SESSION['infos_user']["pp"] 		= $donnees5["pp"];
		   $_SESSION['infos_user']["password"] 	= $hash;
		   $_SESSION['infos_user']["email"] 	= $donnees5["email"];
		   $_SESSION['infos_user']["prenom"] 	= $donnees5["prenom"];
		   $_SESSION['infos_user']["nom"] 		= $donnees5["nom"];
		   $_SESSION['infos_user']["grade"] 	= $donnees5["grade"];
	   	   header('Location: index.php');
	    }

	}

}