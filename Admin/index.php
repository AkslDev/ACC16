<?php SESSION_START();
if (!isset($_SESSION['infos_user']['token'])) {
 header('Location: login.php');
}
?>
	<!DOCTYPE html>
	<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Base d'Administration</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

		<!-- Material Icon -->
		<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

		<!-- Liens vers mes CSS -->
		<link type="text/css" rel="stylesheet" href="css/materialize.css"/>
		<link type="text/css" rel="stylesheet" href="css/styles.css"/>

	</head>
	<body>
		<ul id="slide-out" class="side-nav fixed">
		    	<li>
			    	<div class="userView">
			      		<div class="background">
			        			<img class="bg" src="<?php echo $_SESSION['infos_user']['pp']; ?>">
			      		</div>
			      		<a href="#!user"><img class="circle" src="<?php echo $_SESSION['infos_user']['pp']; ?>"></a>
			      		<a href="#!name"><span class="white-text name"><?php echo $_SESSION['infos_user']['prenom'].' '.$_SESSION['infos_user']['nom']; ?></span></a>
			      		<a href="#!email"><span class="white-text email"><?php echo $_SESSION['infos_user']['email']; ?></span></a>
			    	</div>
		    	</li>
		    	<li id="btn_home">
		    		<a href="#!"><i class="material-icons">home</i>Accueil</a>
	    		</li>
		    	<li id="btn_photos">
		    		<a href="#!"><i class="material-icons">burst_mode</i>Photos</a>
	    		</li>
		    	<li id="btn_produits">
		    		<a href="#!" ><i class="material-icons">dashboard</i>Produits</a>
	    		</li>
		    	<li id="btn_commandes">
		    		<a href="#!"><i class="material-icons">shopping_basket</i>Commandes <span id="nb_probas" class="new badge red">4</span></a>
	    		</li>
		    	<li id="btn_users">
		    		<a class="waves-effect" href="#!"><i class="material-icons">supervisor_account</i>Utilisateurs</a>
	    		</li>
	    		<li>
	    			<a class="waves-effect waves-light btn-large deco" href="deconnexion.php">déconnexion</a>
	    		</li>
	  	</ul>
	  	<a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
	  	<div class="preview">
	  		<section id="home">
		  		<h3>Bonjour, Mr <?php echo $_SESSION['infos_user']['nom']; ?> ! </h3>
		  		<?php 
		  			if($_SESSION['infos_user']["password"] == "c3a309d9403f16a12fd81aa5921ab654f345c36071d9a85ca750e0a76a40ce35"){
				?>
				<div class="row" id="changing">
				    	<div class="col s12 m6">
				     		<div class="card card-password">
				        			<div class="card-content">
								<h5>Veuillez changer votre mot de passe :</h5>
								<input id="password" placeholder="Nouveau mot de passe" type="password" class="validate">
								<input id="re_password"  placeholder="Re-taper votre nouveau mot de passe" type="password" class="validate">
								<a id="change_password" class="waves-effect waves-light btn-large"><i class="material-icons left">done</i>CHANGER</a>
					        		</div>
					      	</div>
					</div>
				</div>
  				<?php } ?>
		  	</section>

		  	<section class="photos" id="photos" style="display: none;">
		  		<h3>Photos</h3>
		  		<a class="waves-effect waves-light btn add_photo" id="add_photo">Ajouter une Photo</a>
		  		<table class="bordered highlight centered">
        					<thead>
          						<tr>	
          							
          						    	<th data-field="photoname">Nom</th>
          						    	<th data-field="description">Description</th>
          						    	<th data-field="action">Action</th>
          						</tr>
       		 			</thead>
        					<tbody>
          						<tr>
          						  	<td>IMG-001.jpg</td>
          						  	<td>Préparation ACC16 Defender 130</td>
          						  	<td>
          						  		<a href="#" class="view_photo">
          						  			<i class="material-icons">remove_red_eye</i>
          						  		</a>
          						  		<a href="#" class="edit">
          						  			<i class="material-icons">mode_edit</i>
          						  		</a>
  		          						<a href="#" class="delete">
          						  			<i class="material-icons">delete</i>
          						  		</a>
          						  	</td>
          						</tr>
          						<tr>
          						  	<td>IMG-002.jpg</td>
          						  	<td>Préparation ACC16 Defender 130</td>
          						  	<td>
          						  		<a href="#" class="view_photo">
          						  			<i class="material-icons">remove_red_eye</i>
          						  		</a>
          						  		<a href="#" class="edit">
          						  			<i class="material-icons">mode_edit</i>
          						  		</a>
  		          						<a href="#" class="delete">
          						  			<i class="material-icons">delete</i>
          						  		</a>
          						  	</td>
          						</tr>
        					</tbody>
      				</table>
      				<div class="photo_viewer" id="photo_viewer" style="display: none;">
      					<a href="#" class="close_card" id="close_card">
      						<i class="material-icons">close</i>
      					</a>
      					<div class="card_photo">
      						<h4 class="photo_name">IMG-001.jpg</h4>
						<img src="http://www.wallpaperscharlie.com/wp-content/uploads/2016/07/Land-Rover-Defender-HD-Wallpapers-2.jpg" alt="Image" width="600">
      					</div>
      				</div>
      				<div class="photo_add" id="photo_add" style="display:none;">
                <a href="#" class="close_card" id="close_card">
                  <i class="material-icons">close</i>
                </a>
      					<div class="card_add-photo">
      						<h4 class="photo_name">Ajouter une photo</h4>
    							<div class="file-field input-field file-photo">
      								<div class="btn">
        									<span>Photo</span>
       									 <input type="file">
      								</div>
      								<div class="file-path-wrapper">
       					 				<input class="file-path validate" type="text">
      								</div>
    							</div>
        							<div class="input-field description-photo">
         								<textarea id="textarea1" class="materialize-textarea"></textarea>
         	 							<label for="textarea1">Description de la Photo</label>
        							</div>
        							<button class="waves-effect waves-light btn" id="submit_photo" >Ajouter</button>
      					</div>
      				</div>
		  	</section>
		  	<section id="produits" style="display: none;">
		  		<h3>Produits</h3>
		  	</section>
		  	<section class="commandes" id="commandes" style="display: none;">
		  		<h3>Commandes (<span id="counters"></span>)</h3>
		  		<table class="bordered highlight centered">
		        			<thead>
		          				<tr>
		          				    	<th data-field="id">N° Commande</th>
		          				    	<th data-field="date">Date</th>
		          				    	<th data-field="products">Produits</th>
                            <th data-field="payment">Moyens de paiement</th>
		          				    	<th data-field="status">Status</th>
                            <th data-field="token">N° Tracking</th>
		          				    	<th data-field="action">Actions</th>
		          				</tr>
		       		 	</thead>
		        			<tbody class="alls_commandes">
		        				<tr class="commande">      
		          				  	<td class="commande_id">302</td>
		          				  	<td class="commande_date">07/02/2017</td>
                          <td class="commande_produit">Poignée P12FD45</td>
                          <td class="commande_tracking">0V8DZ323O983</td>
		          				  	<td class="commande_status">
                            <div class="input-field col s12">
                              <select>
                                <option value="none" disabled>Status de la commande :</option>
                                <option value="0">En attente de probation...</option>
                                <option value="1">Commande validé, en attente de paiement...</option>
                                <option value="2">Paiement validé, envoi de la commande en cours...</option>
                                <option value="3">Paiment reçu, colis reçu...</option>
                              </select>
                            </div>
                          </td>
		          				  	<td class="commande_paiement">Paypal</td>
          						  	<td>
          						  		<a href="#" class="view_command">
          						  			<i class="material-icons">remove_red_eye</i>
          						  		</a>
  		          						<a href="#" class="delete">
          						  			<i class="material-icons">delete</i>
          						  		</a>
          						  	</td>
		          				</tr>
		        			</tbody>
		      		</table>
		      		<div class="view-command" id="view-command" style="display: none;">
		      			<a href="#" class="close_card" id="close_card">
      						<i class="material-icons">close</i>
      					</a>
      					<div class="command-card">
      						<h4 class="card_name" id="card_name">Commande n°<span>302</span></h4>
      						<table class="bordered highlight centered">
		        					<thead>
		          						<tr>
		          						    	<th data-field="products">Produits</th>
		          						</tr>
		       		 			</thead>
		        					<tbody>
		          						<tr>
		            						<td>Poignée P12FD45</td>
		          						</tr>
                          <tr>
                            <td>Poignée P12FD45</td>
                          </tr>
                          <tr>
                            <td>Poignée P12FD45</td>
                          </tr>
                          <tr>
                            <td>Poignée P12FD45</td>
                          </tr>
                          <tr>
                            <td>Poignée P12FD45</td>
                          </tr>
		        					</tbody>
		      				</table>
      					</div>
		      		</div>
		  	</section>
		  	<section class="users" id="users" style="display: none;">
		  		<h3>Utilisateurs (<span id="counter"></span>)</h3>
		  		<table class="bordered highlight centered">
        					<thead>
          						<tr>
          						    	<th data-field="id">ID</th>
          						    	<th data-field="lastnam">Nom</th>
          						    	<th data-field="name">Prénom</th>
          						    	<th data-field="email">E-Mail</th>
          						    	<th data-field="action">Action</th>
          						</tr>
       		 			</thead>
        					<tbody id="users_lists">
          						<tr id="card_user" class="card_user">
          						  	<td id="id_user">01</td>
          						  	<td id="first_name">TASTE</td>
          						  	<td id="second_name">Olivier</td>
          						  	<td id="email_content">Oliv.taste@gmail.com</td>
          						  	<td>
          						  		<a href="#" id="view" class="view">
          						  			<i class="material-icons">remove_red_eye</i>
          						  		</a>
  		          						<a href="#" class="delete" href="#modal-delete_user">
          						  			<i class="material-icons">delete</i>
          						  		</a>
          						  	</td>
          						</tr>
        					</tbody>
      				</table>
              <!-- Modal Confirm Delete User -->
              <div id="modal-delete_user" class="modal">
                    <div class="modal-content">
                        	<h4>Êtes-vous sûr de vouloir supprimer ce compte <span id="familly_name"></span> ?</h4>
                	</div>
                	<div class="modal-footer">
                  		<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat" id="confirm-del_user">
                  			Confirmer
                  		</a>
                  		<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">
                  			Annuler
                  		</a>
                	</div>
              </div>
      				<div class="view_users" id="view_users" style="display: none;">
      					<a href="#" class="close_card" id="close_card">
      						<i class="material-icons">close</i>
      					</a>
      					<div class="card_users">
                  <div class="loader">
                    <img src="img/load.svg" alt="">
                  </div>
      						<div class="more_info" style="display: none;">
                    <h4 class="card_name" id="card_name">Taste Olivier</h4>
                      <p class="card_email" id="card_email">
                        <i class="material-icons">email</i>
                        E-Mail: <span id="email_content" class="email_content">Oliv.taste@gmail.com</span>
                      </p>
                      <p class="card_phone" id="card_phone">
                        <i class="material-icons">phone</i>
                        N° de téléphone: <span class="phone_content" id="phone_content">0635427091</span>
                      </p>
                      <p class="card_adress" id="card_adress">
                        <i class="material-icons">location_on</i>
                        Adresse: <span class="adress_content" id="adress_content">40 rue des poiriers 67890 BLOIS</span>
                      </p>
                      <p class="card_date" id="card_date">
                        <i class="material-icons">child_friendly</i>
                        Date de naissance: <span class="date_content" id="date_content">02/10/1982</span>
                      </p>
                      <table class="bordered highlight centered">
                          <thead>
                              <tr>
                                    <th data-field="id">N° de Commande</th>
                                    <th data-field="date">Date</th>
                                    <th data-field="products">Produits</th>
                                    <th data-field="payment">Moyens de paiement</th>
                                    <th data-field="tracking">N° Tracking</th>
                              </tr>
                        </thead>
                          <tbody class="last_command_user">
                            <tr class="card">
                                <td class="command_id">302</td>
                                <td class="command_date">07/02/2017</td>
                                <td class="command_produit">Poignée P12FD45</td>
                                <td class="command_paiement">Paypal</td>
                                <td class="command_tracking">0GV9432894</td>
                            </tr>
                          </tbody>
                      </table>
                    </div>
                  </div>
            </section>
          </div>
	  	</div>

		<!-- Liens vers mes Scripts -->
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="js/materialize.js"></script>
    <script type="text/javascript" src="js/api_users.js"></script>
    <script type="text/javascript" src="js/api_commandes.js"></script>
		<script type="text/javascript" src="js/main.js"></script>
    <script>gestions_commandes();</script>
	</body>
	</html>