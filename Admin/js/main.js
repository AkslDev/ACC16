	$(document).ready(function(){
		let pos = localStorage.getItem('position');
		if (pos != "undefined") {
			$('#home, #photos, #produits, #commandes, #users').css('display','none');
			$('#'+pos).css('display','block');
			$('#btn_'+pos).addClass('active');
			switch (pos) {
			  case "photos":
			    gestions_photos();
			    break;
			  case "produits":
			    gestions_produits();
			    break;
			  case "commandes":
			    // gestions_commandes();
			    break;
			  case "users":
			    gestions_users();
			    break;
			  case "home":
			    gestions_home();
			    break;
			}
		}
	});
        


	$('.button-collapse').sideNav({
	  menuWidth: 300, // Default is 300
	  edge: 'left', // Choose the horizontal origin
	  closeOnClick: false, // Closes side-nav on <a> clicks, useful for Angular/Meteor
	  draggable: true // Choose whether you can drag to open on touch screens
	}
	);

	$('#change_password').on('click', function () {
			pass_validate();
	});

	$( "#password, #re_password" ).keypress(function(e) {
		if(e.keyCode == 13){
			pass_validate();
		}
	});	

	$('.collapsible').collapsible();

	function pass_validate(){
		let pass = $('#password').val();
		let re_pass = $('#re_password').val();
		if (pass == re_pass) {
			$.ajax( 
                "change_password.php?password="+pass
	        ).done(function( response ) {
		   		Materialize.toast('Parfait ! Votre compte est maintenant sécurisé', 4000);
	        	$('#changing').fadeOut(800);
	        });
		}else{
		    Materialize.toast('Les mots de passe ne corespondent pas !', 4000);
		}
	} 

	$('#btn_home, #btn_photos, #btn_produits, #btn_commandes, #btn_users').on('click', function(){
		$('.side-nav li').removeClass("active");
	    $(this).addClass("active");
		$('#home, #photos, #produits, #commandes, #users').css('display','none');
		var str = this.id;
		var res = str.split("btn_");
		$('#'+res[1]).css('display','block');
		localStorage.setItem('position', res[1]);
	});

	// Section Photos 
		// Voir la photo
			$('.view_photo').on('click', function(){
				// alert('test');
				$('#photo_viewer').css('display', 'block')
			});

		// Ajouter une Photo
			$('#add_photo').on('click', function(){
				// alert('test');
				$('.photo_add').css('display', 'block');
			});

			$('#submit_photo').on('click', function(){
				$('.photo_add').css('display','none');
				Materialize.toast('Photo ajoutée', 4000);
			});

	// Section Commandes 
		// Voir la photo
			$('.view_command').on('click', function(){
				// alert('test');
				$('#view-command').css('display', 'block')
			});
			
	// Section Utilisateurs
		
		
		// Modifier/Supprimer
		$('.edit').on('click', function(){
			alert('test');
		});
		$('#modal-delete_user').modal();


	// BOUTON CLOSE / FERME FENETRE
	$('.close_card').on('click', function(){
		// alert('test');
		close();
	});
	$( ".preview" ).keypress(function( event ) {
	  if ( event.which == 27 ) {
	     close();
	  }
	});
	 
	function close(){
		$('#view_users').css('display','none');
		$('.loader').css('display', 'block');
		$('.more_info').css('display', 'none');
		$('#view-command').css('display','none');
		$('#photo_viewer').css('display','none');
		$('#photo_add').css('display','none');
	}

