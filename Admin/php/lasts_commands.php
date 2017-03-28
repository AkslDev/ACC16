<?php
header('Content-Type: application/json');
/*Importation du fichier de connexion à la base de donnée */
include('php_connexion.php');
if(isset($_GET['token'])){
	$token = $_GET['token'];
	//Récupération des infos
	$reponse1 = $bdd->query('SELECT * FROM commande WhERE token_acheteur="'.$token.'"');

	$last_command = array();

	while ($donnees = $reponse1->fetch())
	{
			$id 				= $donnees["id"];
			$date_commande  	= $donnees["date_commande"];
			$produit_commande	= $donnees["produit_commande"];
			$moyen_paiement 	= $donnees["moyen_paiement"];
			$token_acheteur 	= $donnees["token_acheteur"];
			$numero_tracking 	= $donnees["numero_tracking"];

			$last_command[] = array("id" => $id, "date_commande" => $date_commande, "produit_commande" => $produit_commande, "moyen_paiement" => $moyen_paiement, "token_acheteur" => $token_acheteur, "numero_tracking" => $numero_tracking);
	}

}

$result["lasts_commands"] = array("commands" => $last_command);
	       print(json_encode($result));