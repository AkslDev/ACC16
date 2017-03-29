<div id="list-product" class="list-product large-9" >
<?php 
				//Récupération des infos
				$reponse = $bdd->query('SELECT * FROM produit ');
				$users = array();

				while ($donnees = $reponse->fetch())
				{
		?>
			<div class="small-3 large-3" style="display:inline-block; margin-left:3.5rem;">
				<a class="shop-card">
					<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
						<line class="shop-bottom" x1="15.2rem" y1="13.15rem" x2="11.5625rem" y2="13.15rem"/>
						<line class="shop-right" x1="14.9rem" y1="12.375rem" x2="14.9rem" y2="29.125rem"/>
						<line class="shop-top" x1="15rem" y1="0.0625rem" x2="30rem" y2="0.0625rem"/>
						<line class="shop-left" x1="0.0625rem" y1="-8.75rem" x2="0.0625rem" y2="0"/>
						<line class="shop-diag" x1="-11.6875rem" y1="5.825rem" x2="0" y2="8.3875rem"/>
					</svg>
					<img src="<?php echo $donnees["image"] ?>" alt="<?php echo $donnees["nom_produit"] ?>">
					<p><?php echo $donnees["nom_produit"] ?></p>
				</a>
			</div>
		<?php
				} 
		?>
	