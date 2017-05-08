$(function() {

	// toggle tooltips
	$('[data-toggle="tooltip"]').tooltip({
		container: 'body'
	});

	// toggle search
	$('.js-toggle-search').on('click', function(event) {
		event.preventDefault();

		var $srch = $('.b-nav__search');

		if (!$srch.hasClass('is-visible')) {
			$srch.addClass('is-visible');

			setTimeout(function(){
				$srch.find('input').focus();
			}, 400);
		} else {
			$srch.removeClass('is-visible');
			$srch.find('input').blur();
		}
		
	});

	// back to top button
	var $backToTopBtn = $('.js-back-to-top');

	$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
			$backToTopBtn.addClass('on');
		} else {
			$backToTopBtn.removeClass('on');
		}
	});

	$backToTopBtn.on('click', function(e){
		$('html, body').animate({
			scrollTop: 0
		}, 'fast');
	})
});