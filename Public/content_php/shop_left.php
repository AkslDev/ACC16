<div class="shop-left large-3">
	<ul>
		<?php 
				//Récupération des infos
				$reponse = $bdd->query('SELECT * FROM categ ');
				$users = array();

				while ($donnees = $reponse->fetch())
				{
		?>
				<li id="<?php echo $donnees['nom_btn'] ?>">
					<a href="#"><?php echo $donnees['nom'] ?></a>
				</li>
		<?php
				} 
		?>
		
	</ul>
</div>