	// DropDown Barre de Navigation 
	$('.drop').hover(function() {
	  $(this).find('#drop-connect').stop(true, true).delay(200).slideDown();
	}, function() {
	  $(this).find('#drop-connect').stop(true, true).delay(200).slideUp();
	});

	// Gestion du Chiffre sur le Bouton Panier dans la Nav
	// $('btn-panier').on('click', function(){

	// })`



	// Effet d'agrandissement Boutique
	$('#btn_prepa, #btn_console, #btn_mob, #btn_acc-int, #btn_susp, #btn_secu, #btn_prot, #btn_toit, #btn_port, #btn_reserv, #btn_sticker, #btn_pickup, #btn_acc-raid, #btn_gamme-or, #btn_gamme-vx, #btn_gamme-fr, #btn_gamme-bm').on('click', function(){
		$('.shop-left li').removeClass("shop-left-active");
		$(this).addClass("shop-left-active");
	});

	// Affichage d'un Produit dans la Boutique
	$('.shop-card').on('click', function(){
		$('#list-product').css("display","none");
		$('#view-product').css("display","block");
	});
	// Fermer le produit de la Boutique
	$('#close-product, ul li').on('click', function(){
		$('#view-product').css("display","none");
		$('#list-product').css("display","block");
	})