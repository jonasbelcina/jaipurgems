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

        // About Us - History slider
        var owl = $('.history-slider');

        owl.on('initialized.owl.carousel', function( event ){
            $('.history-slider .owl-item:nth-of-type(1)').addClass('current');
        });

        owl.owlCarousel({
            items: 3,
            nav: true,
            navText: false,
            // loop: true,
            dots: false,
            touchDrag  : false,
            mouseDrag  : false,
            responsive : {
                991 : {
                    items : 3,
                    onResized: removeLast
                },
                767: {
                    items: 2,
                },
                0 : {
                    items : 1,
                }
            },
            // animateOut: 'fadeOut',
            // autoplay: true
            // afterInit: addCurrent
        });

        $('.custom-next').on('click', function() {
            var current = $('.owl-item.current');
            var currentYear = $('.history-year .current');

            if(current.next('.owl-item').length) {
                if(!current.next('.owl-item').hasClass('active')) {
                    owl.trigger('next.owl.carousel');
                }

                current.removeClass('current');
                // current.find('.history-item').css('opacity', '1');
                // current.find('.history-item').css('opacity', '0.4');
                current.next('.owl-item').addClass('current');

                currentYear.removeClass('current');
                currentYear.next('div').addClass('current');
            }
        });

        $('.custom-prev').on('click', function() {
            var current = $('.owl-item.current');
            var currentYear = $('.history-year .current');

            if(current.prev('.owl-item').length) {
                if(!current.prev('.owl-item').hasClass('active')) {
                    owl.trigger('prev.owl.carousel');
                }

                current.removeClass('current');
                // current.find('.history-item').css('opacity', '0.4');
                current.prev('.owl-item').addClass('current');

                currentYear.removeClass('current');
                currentYear.prev('div').addClass('current');
            }
        });

        function removeLast() {
            $('.history-slider .owl-item:nth-of-type(4)').removeClass('active');
            console.log('removed');
        }

        removeLast();

        // About Us - Expertise slider
        $('.about-expertise-slider').owlCarousel({
            items: 1,
            nav: true,
            navText: true,
            // loop: true,
            // animateOut: 'fadeOut',
            // autoplay: true
        });

        // About Us - Latest Collection slider
        $('.latest-slider').owlCarousel({
            items: 4,
            nav: true,
            navText: true,
            loop: true,
            dots: false,
            responsive : {
                991 : {
                    items : 3,
                },
                767: {
                    items: 2,
                },
                0 : {
                    items : 1,
                }
            },
            // animateOut: 'fadeOut',
            // autoplay: true
        });

        // Single product thumbnail slider
        $('.thumbnails').on('initialized.owl.carousel', function( event ){
            $('.thumbnails .owl-item:nth-of-type(1)').addClass('current');
        });
        $('.thumbnails').owlCarousel({
            items: 3,
            nav: true,
            navText: false,
            // loop: true,
            // center:
            dots: false,
            responsive : {
                767 : {
                    items : 4,
                },
                568: {
                    items: 3,
                },
                0 : {
                    items : 2,
                }
            },
            // animateOut: 'fadeOut',
            // autoplay: true
        });

        $('.thumb-custom-next').on('click', function() {
            var current = $('.owl-item.current');
            var thumb_num = parseInt($('.thumbs-count span').text());

            if(current.next('.owl-item').length) {
                if(!current.next('.owl-item').hasClass('active')) {
                    $('.thumbnails').trigger('next.owl.carousel');
                }

                current.removeClass('current');
                current.next('.owl-item').addClass('current');
                $('.single-product .product .images > img').attr('src' , $('.owl-item.current img').attr('src'));
                thumb_num++;
                $('.thumbs-count span').text(thumb_num);
            }
        });

        $('.thumb-custom-prev').on('click', function() {
            var current = $('.owl-item.current');
            var thumb_num = parseInt($('.thumbs-count span').text());

            if(current.prev('.owl-item').length) {
                if(!current.prev('.owl-item').hasClass('active')) {
                    $('.thumbnails').trigger('prev.owl.carousel');
                }

                current.removeClass('current');
                current.prev('.owl-item').addClass('current');
                $('.single-product .product .images > img').attr('src' , $('.owl-item.current img').attr('src'));
                thumb_num--;
                $('.thumbs-count span').text(thumb_num);
            }
        });

        $('.thumbnails .owl-item a').on('click', function(e) {
            e.preventDefault();
            $('.owl-item').removeClass('current');
            $(this).closest('.owl-item').addClass('current');
            $('.single-product .product .images > img').attr('src' , $('.owl-item.current img').attr('src'));
            var index = $(this).closest('.owl-item').index() + 1;
            $('.thumbs-count span').text(index);
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

        // $( window ).on('resize' ,function() {
        //     var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
        //     if(ww == 768) {
        //         $('.related .products > .container > .row').owlCarousel({
        //             items: 1,
        //             nav: true,
        //             navText: false,
        //             dots: false,
        //         });

        //         $('.additional-items .products > .container > .row').owlCarousel({
        //             items: 1,
        //             nav: true,
        //             navText: false,
        //             dots: false,
        //         });
        //     } else if(ww == 769) {
        //         if($('.products .owl-carousel').length) {
        //             console.log('asdasdk');
        //             $('.related .products > .container > .row').data('owl.carousel').destroy(); 
        //             $('.related .products > .container > .row').owlCarousel({touchDrag: false, mouseDrag: false});
        //         }
        //     }
        // });

        var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
        if(ww < 769) {
            $('.related .products > .container > .row').owlCarousel({
                items: 1,
                nav: true,
                navText: false,
                dots: false,
            });

            $('.additional-items .products > .container > .row').owlCarousel({
                items: 1,
                nav: true,
                navText: false,
                dots: false,
            });
        }

	});

})(jQuery);

// social sharing popup
function popitup(url) {
    newwindow=window.open(url,'name','height=200,width=400');
    if (window.focus) {newwindow.focus()}
    return false;
}






