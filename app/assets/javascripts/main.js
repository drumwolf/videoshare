function alert_disappear() {
	setTimeout(function(){
		$('.alert').fadeOut();
	}, 3000);
};

function user_dropdown() {
	var usermenu = $('ul.usermenu');
	$('body').click(function(){
		usermenu.slideUp();
	});
	$('a.username').click(function(e){
		if ( !usermenu.is(':visible') ) {
			usermenu.slideDown();
			e.stopPropagation();
		}
	});
}

function navbar_toggle() {
	$('.navbar-toggle').click(function(e){
		e.stopPropagation();
		var navbar = $('nav.collapse');
		if (!navbar.is(':visible')) {
			navbar.show();
		} else {
			navbar.hide();
		}
	})
}

$(document).ready(function(){
	alert_disappear();
	user_dropdown();
	navbar_toggle();
});