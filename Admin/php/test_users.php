<?php 
require('php_connexion.php');

header('Content-Type: application/json');

    function random($car) {
        $string = "";
        $chaine = "abcdefghijklmnpqrstuvwxy";
        srand((double)microtime()*1000000);
        for($i=0; $i<$car; $i++) {
            $string .= $chaine[rand()%strlen($chaine)];
        }
        return $string;
    }

for ($i=0; $i < 2; $i++) { 
	    // APPEL
    // Génère une chaine de longueur 20
    $chaine = random(15);
    $mail = random(10);
    $prenom = random(5);
    $nom = random(5);

    $token = sha1($chaine);

    $req2 = $bdd->prepare('INSERT INTO membre(first_name, second_name, email, phone, adress, birthday, token) VALUES(:first_name, :second_name, :email, :phone, :adress, :birthday, :token)');
    $req2->execute(array(
        'first_name' => $prenom,
        'email' => $mail,
        'second_name' => $nom,
        'phone' => '00000000',
        'adress' => 'fjudzjduz',
        'birthday' => '7Y73723',
        'token' => $token));

}
