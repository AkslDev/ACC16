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

	function pass_validate(){
		let pass = $('#password').val();
		let re_pass = $('#re_password').val();
		if (pass == re_pass) {
			$.ajax( 
                "change_password.php?password="+pass
	        ).done(function( response ) {
		   		Materialize.toast('Parfait ! Votre compte est maintenant sécurisé', 4000)
	        	$('#changing').fadeOut(800);
	        });
		}else{
		    Materialize.toast('Les mots de passe ne corespondent pas !', 4000)
		}
	} 