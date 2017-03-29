<!DOCTYPE html>
<html lang="fr">
	<?php require('content_php/php_connexion.php'); ?>
	<?php require("content_php/head.php") ?>
<body>
	<?php require ("content_php/nav.php"); ?>
	<!-- Début de la Section -->
	<section class="shop">
		<div class="shop-topbar">
			<p class="blanc">Recherche avancée</p>	
			<div class="row">
				<form>
					<input type="search" name="Search" placeholder="Rechercher un produit ou une référence">
  					<select class="trier">
  						<option value="null">Trier par :</option>
    						<option value="prix-croissants">Prix croissants</option>
    						<option value="prix-decroissants">Prix décroissants</option>
    						<option value="news">Nouveautés</option>
  					</select>
  					<select class="prod">
  						<option value="null">Année de production</option>
    						<option value="phase1">1983-1990 Phase I</option>
    						<option value="phase2">1990-2007 Phase II</option>
    						<option value="phase3">2007-2016 Phase III</option>
  					</select>
  					<button type="submit" class="fdrouge blanc"><i class="material-icons">search</i>Rechercher</button>
				</form>
			</div>
		</div>

		<div class="row">
			<?php require('content_php/shop_left.php'); ?>
			<?php require('content_php/produit.php'); ?>
			</div>
			<?php
			if (isset($_GET['produit'])) {
			?>
			<div id="view-product" class="view-product large-9">
				<div class="row">
				<a href="#" id="close-product"><i class="material-icons">close</i></a>
					<div class="large-4 title-product">
						<p class="gris bold">Ensemble de 2 Barres de toit avec rail sur benne</p>
					</div>
					<div class="large-6 img-product">
						<img src="img/boutique/product/barre-de-toit.png" alt="Image-Produit">
					</div>
				</div>		
				<div class="row">
					<div class="large-7">
						<p class="description-product bold gris">
							Vous avez un autre pickup que le Ford Ranger T6 içi présenté et des équipements vous intéressent ? 
							<br><br>
							Nos rideaux coulissant existent pour l'ensemble des pickup du marché, nous sommes distributeurs de la gamme Vision X pour l'éclairage LED et de Front Runner pour les Galeries.
							<br><br>
							<span>
							Nous concevons ensuite sur mesure les barres de toit sur benne ainsi que plateau coulissant, donc n'hésitez pas à prendre contact avec nous !
							</span>
							<br>
						</p>	
					</div>
					<div class="large-3 info-product fdgris" align="center">
						<p class="dispo blanc">Disponibilité<br>
							<span class="bold">en stock</span>
						</p>
						<p class="price-product blanc bold">390<span class="rouge">,</span>00€
						</p>
						<label class="bold blanc">Quantité<br>
  							<select>
    								<option value="1">1</option>
    								<option value="2">2</option>
    								<option value="3">3</option>
    								<option value="4">4</option>
   									<option value="5">5</option>
    								<option value="6">6</option>
    								<option value="7">7</option>
    								<option value="8">8</option>
									<option value="9">9</option>
    								<option value="10">10</option>
  							</select>
						</label>
					</div>
					<a href="#" class="add-panier" id="btn-panier">
						<i class="material-icons">shopping_cart</i>
						Ajouter au panier
					</a>
				</div>	
			</div>
			<?php }; ?>
		</div>
	</section>
	<!-- FIN DE LA SECTION -->
	<?php require('content_php/footer_shop.php'); ?>
	<?php require('content_php/script.php'); ?>
	<?php
		if (isset($_GET['produit'])) {
			echo "<script>$('.shop-left li').removeClass('shop-left-active'); $('#list-product').hide();</script>";
		};
		if (isset($_GET['categorie'])){
			$categ = htmlentities($_GET['categorie']);
			echo '<script>$(".shop-left li").removeClass("shop-left-active");$('.$categ.').addClass("shop-left-active");</script>';
		}else{
			echo '<script>$(".shop-left li").removeClass("shop-left-active");$("#all").addClass("shop-left-active");</script>';
		}
	?>
</body>
</html>
</html>