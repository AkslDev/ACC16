let under_works = false;
let counts = 0;
let nb_probas = 0;

function gestions_commandes() {
			if (under_works != true) {
					$.ajax("php/get_commande.php").done(function(response){
		      		let 	$list_card = $('.alls_commandes'),
							$card 	= $list_card.children('.commande').detach();


					for(let j=0; j<response.all_commands.commands.length; j++){
						let 	div = $card.clone();
							div.find('.commande_id').text(response.all_commands.commands[j].id);
							div.find('.commande_date').text(response.all_commands.commands[j].date_commande);
							div.find('.commande_produit').text(response.all_commands.commands[j].produit_commande);
							div.find('.commande_tracking').text(response.all_commands.commands[j].moyen_paiement);
							div.find('.commande_paiement').text(response.all_commands.commands[j].numero_tracking);
							switch (response.all_commands.commands[j].status) {
							  case "0":
							  	nb_probas++;
								div.find('.commande_status').text("En attente de probation...");
								$('#nb_probas').text(nb_probas);	
							    break;
							  case "1":
								div.find('.commande_status').text("Commande validé, en attente de paiement...");
							    break;
							  case "2":
								div.find('.commande_status').text("Paiement validé, envoi de la commande en cours...");
							    break;
							  case "3":
								div.find('.commande_status').text("Paiment reçu, colis reçu...");
							    break;
							}

							$list_card.append(div);
							counts++;
							$('#counters').text(counts);
					}
					
					under_works = true;
				});
		}
	
}