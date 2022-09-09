
$(function() {
    // coloration orange/blanc sur le bouton panier
	$("#id-div-panier").mouseenter(function() {
		$("#id-nb-panier").css("color", "black");
		$("#id-a-panier").css("color", "#F4672c");
	});
	$("#id-div-panier").mouseleave(function() {
		$("#id-nb-panier").css("color", "white");
		$("#id-a-panier").css("color", "black");
	});
	
	// coloration orange/blanc sur le bouton compte
	$("#btn-color").mouseenter(function() {
		$("#btn-compte").css("color", "#F4672c");
	});
	$("#btn-color").mouseleave(function() {
		$("#btn-compte").css("color", "black");
	});
	
	// coloration orange/blanc sur le bouton aide
	$("#id-div-aide").mouseenter(function() {
		$("#id-btn-aide").css("color", "#F4672c");
	});
	$("#id-div-aide").mouseleave(function() {
		$("#id-btn-aide").css("color", "black");
	});
	
	// coloration orange/blanc sur les boutons categorie
	$(".categorie").mouseenter(function() {
		$(this).css({"color" : "white","background-color" : "#F4672c"});
	});
	$(".categorie").mouseleave(function() {
		$(this).css({"color" : "black","background-color" : "white"});
	});
	
	// coloration orange/noir sur les categorie
	$("#list-tab a").mouseenter(function() {
		$(this).css("color", "#F4672c");
	});
	$("#list-tab a").mouseleave(function() {
		$(this).css("color", "black");
	});
	
	// enlever coloration background des categorie
	$("#list-tab a").click(function() {
		$(this).css("background-color","white");
	});
	
	
});


