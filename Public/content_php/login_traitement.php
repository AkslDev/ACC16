<?php 
require('php_connexion.php');
if(isset($_POST['id']) && isset($_POST['pass']))
{
	 $id	= htmlentities($_POST['id']);
	 $pass 	= htmlentities($_POST['pass']);
	 $hash 	= hash("haval256,5",  $pass);

	 // Vérification des identifiants
	$req = $bdd->prepare('SELECT id FROM membre WHERE email = :email AND pass = :pass');
	$req->execute(array(
	    'email' => $id,
	    'pass' => $hash));

	$resultat = $req->fetch();

	if (!$resultat)
	{
	   header('Location: ../connexion.php?erreur=login');
	}
	else
	{
	    //Récupération des infos
	    $reponse5 = $bdd->query('SELECT * FROM membre WHERE email="'.$id.'"');
	    while ($donnees5 = $reponse5->fetch())
	    {
	       $_SESSION['user']['id'] 			= $donnees5["id"];
		   $_SESSION['user']["prenom"] 		= $donnees5["first_name"];
		   $_SESSION['user']["nom"] 		= $donnees5["second_name"];
		   $_SESSION['user']["email"] 		= $donnees5["email"];
		   $_SESSION['user']["phone"] 		= $donnees5["phone"];
		   $_SESSION['user']["adresse"] 	= $donnees5["adress"];
		   $_SESSION['user']["birthday"] 	= $donnees5["birthday"];
		   $_SESSION['user']['token'] 		= $donnees5["token"];
	   	   header('Location: ../index.php');
	    }

	}

}