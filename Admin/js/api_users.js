	let token;
	$('#btn_users').on('click', function(){
		$.ajax( 
	            "php/get_info_users.php" 
	    ).done(function( response ) {
    	       let $list_card = $('#users_lists'),
		$card 	= $list_card.children('#card_user').detach();

			for(let j=0; j<response.clients.users.length; j++){
					let div 		= $card.clone();
						div.find('#id_user').text(j);
						div.find('#first_name').text(response.clients.users[j].first_name);
						div.find('#second_name').text(response.clients.users[j].second_name);
						div.find('#email_content').text(response.clients.users[j].email);

						$list_card.append(div);
					token = response.clients.users[j].token;

			}
			$('.delete').on('click', function(){
					$.ajax("php/delete_user.php?token="+token)
					.done(function(response) {
					    	if (response.response=="ok"){
					    		Materialize.toast('Utilisateur suprimé', 4000);
					    	}
					});
				});
		});
	});

	

	