;(function($){
	$(document).ready(function(){
		// home page slider
		$('.home-slides').owlCarousel({
			items: 1,
			nav: false,
			loop: true,
			navText: false,
			animateOut: 'fadeOut',
			autoplay: true
		});

		// main nav mobile dropdown
        $('.dropdown-toggle span').on('click', function() {
            var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

            if($(this).hasClass('glyphicon-plus')) {
                if(ww > 767) {
                    $(this).closest('li').find('.dropdown-menu').toggle();
                } else {
                    $(this).closest('li').find('.dropdown-menu').slideToggle('slow');
                }
                $(this).removeClass('glyphicon-plus');
                $(this).addClass('glyphicon-minus');
            } else {
                if(ww > 767) {
                    $(this).closest('li').find('.dropdown-menu').toggle();
                } else {
                    $(this).closest('li').find('.dropdown-menu').slideToggle('slow');
                }
                $(this).removeClass('glyphicon-minus');
                $(this).addClass('glyphicon-plus');
            }
        });

        // footer mobile dropdown
        $('.footer-menu h3').on('click', function() {
            if($(this).find('span').hasClass('glyphicon glyphicon-plus')) {
                $(this).next('ul').slideToggle('500');
                $(this).find('span').removeClass('glyphicon glyphicon-plus');
                $(this).find('span').addClass('glyphicon glyphicon-minus');
            } else {
                $(this).next('ul').slideToggle('500');
                $(this).find('span').removeClass('glyphicon glyphicon-minus');
                $(this).find('span').addClass('glyphicon glyphicon-plus');
            }
        });

        // $('.share a').on('click', function(e) {
        //     e.preventDefault();
        // });

	});

})(jQuery);

// social sharing popup
function popitup(url) {
    newwindow=window.open(url,'name','height=200,width=400');
    if (window.focus) {newwindow.focus()}
    return false;
}






