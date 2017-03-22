	let under_work = false;
	let count = 0;

	function gestions_users(){
			let token;
			let pos = localStorage.getItem('position');
			if (under_work != true) {
					$.ajax("php/get_info_users.php").done(function(response){
		      		let 	$list_card = $('#users_lists'),
							$card 	= $list_card.children('#card_user').detach();


					for(let j=0; j<response.clients.users.length; j++){
						let 	div = $card.clone();
							div.find('#id_user').text(response.clients.users[j].id);
							div.find('#id_user').attr("token", response.clients.users[j].token);
							div.find('#first_name').text(response.clients.users[j].first_name);
							div.find('#second_name').text(response.clients.users[j].second_name);
							div.find('#email_content').text(response.clients.users[j].email);

							$list_card.append(div);
							count++;
					}
					$('#counter').text(count);

					$('.view').on('click', function(){
						let this_click = this;
						let token = $( this_click ).parent().parent().find('#id_user').attr('token');
						$.ajax("php/get_info_users.php?more="+token).done(function(response){
							$('.view_users').css('display','block');
							console.log(response.clients.users[0]);
							$('.card_name').text(response.clients.users[0].first_name+" "+response.clients.users[0].second_name);
							$('.email_content').text(response.clients.users[0].email);
							$('.phone_content').text(response.clients.users[0].phone);
							$('.adress_content').text(response.clients.users[0].adress);
							$('.date_content').text(response.clients.users[0].birthday);
							$('.view_users').css('display','block');
							setTimeout(function() {
								$('.loader').css('display', 'none');
								$('.more_info').css('display', 'block');
							}, 1000);
						});
					});

					$('.delete').on('click', function(){
						count--;
						let this_click = this;
						$('#modal-delete_user').modal('open');
						$('#confirm-del_user').on('click',function(){
							$('#counter').text(count);
							let token = $( this_click ).parent().parent().find('#id_user').attr('token');
							$.ajax("php/delete_user.php?token="+token)
							.done(function(response) {
						    	if (response.response=="ok"){
						    		Materialize.toast('Utilisateur suprimé', 1000);
									$(this_click).closest('tr').remove();
						    	}
							});
						});
					});
					under_work = true;
				});
		}
	}

	$('#btn_users').on('click', function(){
		gestions_users();
	});


	

	