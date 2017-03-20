<?php
header('Content-Type: application/json');
/*Importation du fichier de connexion à la base de donnée */
include('php_connexion.php');
//Récupération des infos
$reponse = $bdd->query('SELECT * FROM membre');

$users = array();

while ($donnees = $reponse->fetch())
{
		$id = $donnees["id"]; 
		$first_name = $donnees["first_name"]; 
		$second_name = $donnees["second_name"]; 
		$email = $donnees["email"]; 
		$phone = $donnees["phone"]; 
		$adress = $donnees["adress"]; 
		$birthday = $donnees["birthday"]; 
		$token = $donnees["token"]; 
		$users[] = array("id" => $id, "first_name" => $first_name, "second_name" => $second_name, "email" => $email, "phone" => $phone, "adress" => $adress, "birthday" => $birthday, "token" => $token);
}


$result["clients"] = array("users" => $users);
       print(json_encode($result));

