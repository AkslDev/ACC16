	$('#btn_users').on('click', function(){
		$.ajax( 
	            "http://localhost/workshop/ACC16/Admin/php/get_info_users.php" 
	    ).done(function( response ) {
	    	let $list_card = $('#users_lists'),
				$card 	= $list_card.children('#card_user').detach();

			for(let j=0; j<response.clients.users.length; j++){
					let div 		= $card.clone();
						div.find('#id_user').text(j);
						div.find('#id_user').attr("token", response.clients.users[j].token);
						div.find('#first_name').text(response.clients.users[j].first_name);
						console.log(response.clients.users[j].first_name);
						div.find('#second_name').text(response.clients.users[j].second_name);
						div.find('#email_content').text(response.clients.users[j].email);

						$list_card.append(div);
			}
		});
	});

	