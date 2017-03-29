let under_products= false;

function gestions_products() {
	if (under_products != true) {
		$.ajax("#").done(function(response){

		      	let 	$list_products = $('.alls_produits'),
				$card 	= $list_products.children('.produit').detach();


					for(let j=0; j<0; j++){
					let 	div = $card.clone();
							div.find('.produit_item').text();
							div.find('.produit_prix').text();
							div.find('.produit_dispo').text();
							div.find('.produit_categorie').text();
							$list_products.append(div);
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
					under_products = true;
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

