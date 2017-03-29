let under_pictures = false;

function gestions_commandes() {
			if (under_pictures != true) {
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
			
			// *!**!**!**!**!**!**!**!* 		A FAIRE 		*!**!**!**!**!**!**!**!*	
					$('.delete').on('click', function(){
						console.log('okok');
						$('#modal-delete_command').modal('open');
						$('#confirm-del_command').on('click',function(){
							$.ajax("#").done(function(response) {
							
							});

							Materialize.toast('Commande suprimée', 1000);
						});
					});
			// *!**!**!**!**!**!**!**!* 		A FAIRE 		*!**!**!**!**!**!**!**!*	
					$('.view_link-command').on('click', function(){
						$.ajax("#").done(function(response){
							$('.command-viewer').css('display','block');
							$('.nom').text();
							$('.prenom').text();
							$('adresse').text();
							$('produits').text();
							$('statuts-cmd').text();
							$('paiement').text();
						});
					});
					under_pictures = true;
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

