<?php
header('Content-Type: application/json');
/*Importation du fichier de connexion à la base de donnée */
include('php_connexion.php');
	//Récupération des infos
	$reponse = $bdd->query('SELECT * FROM commande');

	$commands = array();

	while ($donnees = $reponse->fetch())
	{
			$id 				= $donnees["id"];
			$date_commande  	= $donnees["date_commande"];
			$produit_commande	= $donnees["produit_commande"];
			$produits 			= explode("||", $produit_commande);
			$moyen_paiement 	= $donnees["moyen_paiement"];
			$status 			= $donnees["status"];
			$token_acheteur 	= $donnees["token_acheteur"];
			$numero_tracking 	= $donnees["numero_tracking"];

			$commands[] = array("id" => $id, "date_commande" => $date_commande, "produit_commande" => $produits, "moyen_paiement" => $moyen_paiement, "status" => $status, "token_acheteur" => $token_acheteur, "numero_tracking" => $numero_tracking);
	}
$result["all_commands"] = array("commands" => $commands);
	       print(json_encode($result));