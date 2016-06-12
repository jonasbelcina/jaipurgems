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
			// center: true,
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

		$('.open-popup').magnificPopup({
			// delegate: 'img', // child items selector, by clicking on it popup will open
			type: 'inline',
			// gallery:{
			//     enabled:true
			//   }
		});


		$('.open-popup.event-popup').on('click', function() {

			$(".event-gallery").css('display', 'block');
			// $(".campaign-gallery").owlCarousel({

			//         items : 1,
			//         navigation:true,
			//         singleItem:true,
			//         navigationText: [
			//         "<i class='icon-chevron-left icon-white'><</i>",
			//         "<i class='icon-chevron-right icon-white'>></i>"
			//         ],
			//     });

			// $('.campaign-gallery img').unveil(1, function() {
			//     $(this).load(function() {
			//         $(this).css({
			//             'height': '100%',
			//         });
			//     });
			// });

			// Event gallery slider
			$('.event-gallery').owlCarousel({
				items: 1,
				nav: true,
				loop: false,
				navText: false,
				// animateOut: 'fadeOut',
				// autoplay: true
			});

		});

		$('.open-popup.campaign-popup').on('click', function() {
			var this_campaign = $(this).attr('href');

			$(this_campaign).find('.campaign-gallery').css('display', 'block');

			$(this_campaign).find('.campaign-gallery').owlCarousel({
				items: 1,
				nav: true,
				loop: false,
				navText: false,
				autoHeight: true
				// animateOut: 'fadeOut',
				// autoplay: true
			});

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
				$('.single-product .product .images > img').data('zoomImage' , $('.owl-item.current img').attr('src'));
				changeData();
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
				$('.single-product .product .images > img').data('zoomImage' , $('.owl-item.current img').attr('src'));
				changeData();
				thumb_num--;
				$('.thumbs-count span').text(thumb_num);
			}
		});

		$('.thumbnails .owl-item a').on('click', function(e) {
			e.preventDefault();
			$('.owl-item').removeClass('current');
			$(this).closest('.owl-item').addClass('current');
			var newSrc = $('.owl-item.current img').attr('src');

			$('.single-product .product .images > img').attr('src' , newSrc);
			$('.single-prod-img').data('zoomImage', newSrc);
			changeData();

			var index = $(this).closest('.owl-item').index() + 1;
			$('.thumbs-count span').text(index);
		});

		function changeData() {
			var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
			if(ww > 991) {
				$('.single-prod-img').elevateZoom({
					'cursor': 'crosshair',
					zoomWindowWidth: 400,
					zoomWindowHeight: 400,
					'borderSize': 1
				});
			} else {
				$('.single-prod-img').elevateZoom({
					'zoomType': 'inner',
					'cursor': 'crosshair',
					zoomWindowWidth: 400,
					zoomWindowHeight: 400,
					'borderSize': 1
				});
			}
		}

		// main nav mobile dropdown
		$('.dropdown-toggle span').on('click', function(e) {
			var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
			e.preventDefault();
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
				items: 2,
				nav: true,
				navText: false,
				dots: false,
			});

			// $('.additional-items .products > .container > .row').owlCarousel({
			// 	items: 2,
			// 	nav: true,
			// 	navText: false,
			// 	dots: false,
			// });
			$('.additional').click(function() {
			    setTimeout(function() {
				    $('.additional-items .products > .container > .row').owlCarousel({
				    	items: 2,
				    	nav: true,
				    	navText: false,
				    	dots: false,
				    });
				}, 50);
			});
		}

		// product zoom
		if(ww > 991) {
			$('.single-prod-img').elevateZoom({
				'cursor': 'crosshair',
				zoomWindowWidth: 400,
				zoomWindowHeight: 400,
				'borderSize': 1
			});
		} else {
			$('.single-prod-img').elevateZoom({
				'zoomType': 'inner',
				'cursor': 'crosshair',
				zoomWindowWidth: 400,
				zoomWindowHeight: 400,
				'borderSize': 1
			});
		}

	});

	$(window).load(function() {
		$('.blog-holder').masonry({
			// options
			itemSelector: '.blog-item',
			// columnWidth: 200
		});
	});

	var $grid = $('.campaign-holder').masonry({
		// options
		itemSelector: '.single-campaign'
		// columnWidth: 200
	});

	// layout Masonry after each image loads
	$grid.imagesLoaded().progress( function() {
		$grid.masonry('layout');
	});

	var headerTop = $('.navbar').offset().top;
	$(window).scroll(function(e){
		var windowTop = $(window).scrollTop();

		if(windowTop > headerTop) {
			$('.navbar').addClass('navbar-fixed-top');
		} else {
			$('.navbar').removeClass('navbar-fixed-top');
		}
	});

	// browser window scroll (in pixels) after which the "back to top" link is shown
	var offset = 300,
		//browser window scroll (in pixels) after which the "back to top" link opacity is reduced
		offset_opacity = 1200,
		//duration of the top scrolling animation (in ms)
		scroll_top_duration = 700,
		//grab the "back to top" link
		$back_to_top = $('.cd-top');

	//hide or show the "back to top" link
	$(window).scroll(function(){
		( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
		if( $(this).scrollTop() > offset_opacity ) { 
			$back_to_top.addClass('cd-fade-out');
		}
	});

	//smooth scroll to top
	$back_to_top.on('click', function(event){
		event.preventDefault();
		$('body,html').animate({
			scrollTop: 0 ,
			}, scroll_top_duration
		);
	});

	// smooth scroll - about us
	$(function() {
		$('a.smooth[href*="#"]:not([href="#"])').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				if (target.length) {
					$('html, body').animate({
						scrollTop: target.offset().top - 138
					}, 1000);
					return false;
				}
			}
		});
	});

	// include product name on try at home contact
	$('.try-at-home').on('click', function(){
	    var product = $(this).data('product');
	    $(".product-hidden").val(product);
	});

})(jQuery);

// social sharing popup
function popitup(url) {
	newwindow=window.open(url,'name','height=200,width=400');
	if (window.focus) {newwindow.focus()}
	return false;
}






