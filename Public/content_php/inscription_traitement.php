<?php 
require('php_connexion.php');

if(isset($_POST['second_name']) &&  isset($_POST['email'])){
	$second_name = htmlentities($_POST['second_name']);
	$email = htmlentities($_POST['email']);
	$mdp = htmlentities($_POST['mdp']);
	$pass 	= hash("haval256,5",  $mdp);
	$adress = htmlentities($_POST['adress']);
	$first_name = htmlentities($_POST['first_name']);
	$phone = htmlentities($_POST['phone']);
	$birthday = htmlentities($_POST['birthday']);

	if($bdd->query('SELECT COUNT(*) FROM membre WHERE email = '.$bdd->quote($email))->fetchColumn() <> 0){
	   		header('Location: ../inscription.php?erreur=email');
        }
    else
    {

    	function random($car) {
	        $string = "";
	        $chaine = "abcdefghijklmnpqrstuvwxy";
	        srand((double)microtime()*1000000);
	        for($i=0; $i<$car; $i++) {
	            $string .= $chaine[rand()%strlen($chaine)];
	        }
	        return $string;
	    }

	    // APPEL
	    // Génère une chaine de longueur 20
	    $chaine = random(20);

	    $token = sha1('my' .$chaine);

	    $req2 = $bdd->prepare('INSERT INTO membre(first_name, second_name, email, pass, phone, adress, birthday, token) VALUES(:first_name, :second_name, :email, :pass, :phone, :adress, :birthday, :token)');
	    $req2->execute(array(
	        'first_name' => $first_name,
	        'second_name' => $second_name,
	        'email' => $email,
	        'pass' => $pass,
	        'token' => $token,
	        'phone' => $phone,
	        'adress' => $adress,
	        'birthday' => $birthday,
	        'token' => $token));


	    //Récupération des infos
	    $reponse5 = $bdd->query('SELECT * FROM membre WHERE email="'.$email.'"');
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