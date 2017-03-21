<?php
	
	header('Content-Type: application/json');
	
	/*Importation du fichier de connexion à la base de donnée */
	include('php_connexion.php');

	$result = array("response" => "none");

	if(isset($_GET['token'])){
	    	$token = htmlentities($_GET["token"]);
	    	$bdd->exec("DELETE FROM membre WHERE token = '".$token."'");
		$result = array("response" => "ok");
	}

	print(json_encode($result));



