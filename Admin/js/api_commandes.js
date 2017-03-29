let under_works = false;
let counts = 0;
let nb_probas = 0;

function detect_options(id, value){
	let status = 0;
	switch (value) {
	  case "Status de la commande :":
	    // Nothing
	    break;
	  case "En attente de probation...":
	    status = 0;
	    break;
	  case "Commande validé, en attente de paiement...":
	    status = 1;
	    break;
	  case "Paiement validé, envoi de la commande en cours...":
	    status = 2;
	    break;
	  case "Paiment reçu, colis reçu...":
	    status = 3;
	    break;
	}
	console.log("id : " + id + " status : " + status);
}

function gestions_commandes() {
			if (under_works != true) {
						$.ajax("php/get_commande.php").done(function(response){
		      		let 	$list_card = $('.alls_commandes'),
							$card 	= $list_card.children('.commande').detach();


					for(let j=0; j<response.all_commands.commands.length; j++){
					let 	div = $card.clone();
							div.find('.commande_id').text(response.all_commands.commands[j].id);
							div.find('.commande_date').text(convert_timestamp(response.all_commands.commands[j].date_commande));
							div.find('.commande_produit').text(response.all_commands.commands[j].produit_commande);
							div.find('.commande_tracking').text(response.all_commands.commands[j].moyen_paiement);
							div.find('.commande_paiement').text(response.all_commands.commands[j].numero_tracking);
							div.find('option[value="'+response.all_commands.commands[j].status+'"]').attr("selected", "");

							if(response.all_commands.commands[j].status == 0){
								nb_probas++;
								$('#nb_probas').text(nb_probas);
							}

							$list_card.append(div);
							counts++;
							$('#counters').text(counts);
							
					}
					$('.view_link-command').on('click', function(){
						$('.command-viewer').css('display','block');
					});
					under_works = true;
					$('select').material_select();
				});
		}
	
}

setTimeout(function() {
	$('.dropdown-content li > span').on('click', function() {
		let children_id = $(this).parent().parent().parent().parent().parent().parent();
		let children 	= $(this).parent()[0].children[0];
	    detect_options($(children_id).find(".commande_id").text(), $(children).text());
	}); 
}, 1);

