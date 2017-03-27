	// Effet d'agrandissement Boutique

	$('#btn_prepa, #btn_console, #btn_mob, #btn_acc-int, #btn_susp, #btn_secu, #btn_prot, #btn_toit, #btn_port, #btn_reserv, #btn_sticker, #btn_pickup, #btn_acc-raid, #btn_gamme-or, #btn_gamme-vx, #btn_gamme-fr, #btn_gamme-bm').on('click', function(){
		$('.shop-left li').removeClass("shop-left-active");
		$(this).addClass("shop-left-active");
	});