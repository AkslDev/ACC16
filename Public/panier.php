<?php session_start(); 
      if(isset($_SESSION['user']["token"])) {
        
      }else{
        header('Location: connexion.php');
      }
?><!DOCTYPE html>
<html lang="fr">
	<?php require("content_php/head.php") ?>
<body>
	<?php require ("content_php/nav.php"); ?>
	<!-- Début de la Section -->
	<section class="panier">
		<h3 class="gris bold">Panier</h3>
		<table class="">
  			<thead>
  			  	<tr>
  			    		<th width="200">Table Header</th>
  			    		<th>Table Header</th>
  			    		<th width="150">Table Header</th>
  			    		<th width="150">Table Header</th>
  			  	</tr>
  			</thead>
  			<tbody>
    				<tr>
    				  	<td>Content Goes Here</td>
    				  	<td>This is longer content Donec id elit non mi porta gravida at eget metus.</td>
    				  	<td>Content Goes Here</td>
    				  	<td>Content Goes Here</td>
    				</tr>
  			</tbody>
		</table>
	</section>
	<?php require('content_php/footer.php'); ?>
	<?php require('content_php/script.php'); ?>
</body>
</html>
</html>