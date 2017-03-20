<?php 
require('php/php_connexion.php');
if(isset($_GET['password'])){
	$pass = $_GET['password'];
	$hash 	= hash("haval256,5",  $pass);

	$email =  $_SESSION['infos_user']['email'];
	$bdd->exec('UPDATE admin SET mdp = "'.$hash.'" WHERE email = "'.$email.'"');
}