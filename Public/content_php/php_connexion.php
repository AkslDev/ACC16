<?php SESSION_START();
try
    {
        $bdd = new PDO('mysql:host=localhost;dbname=acc16;charset=utf8', 'root', '');
        $statuts = true;
    }
    catch(Exception $e)
    {
        $statuts = false;
    }
