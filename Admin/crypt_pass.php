<?php 

$pass 	= "admin"; // test here
$hash 	= hash("haval256,5",  $pass);

echo $hash;