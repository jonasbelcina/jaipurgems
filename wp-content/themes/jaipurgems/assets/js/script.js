;(function($){
	$(document).ready(function(){
		// home page slider
		// $('.home-slides').owlCarousel({
		// 	items: 1,
		// 	nav: false,
		// 	loop: true,
		// 	navText: false,
		// 	animateOut: 'fadeOut',
		// 	autoplay: true
		// });

		// Home - Celebrities slider
		$('.celebrity-slides').owlCarousel({
			items: 1,
			nav: true,
			navText: true,
			dots: false,
			loop: true,
			autoplay: true
		});

		// About Us - History slider
		var owl = $('.history-slider');
		var hist = $('.history-year');

		var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
		if(ww > 991) {
			owl.on('initialized.owl.carousel', function( event ){
				$('.history-slider .owl-item:nth-of-type(1)').addClass('initial');
				$('.history-slider .owl-item:nth-of-type(2)').addClass('current');
			});

			owl.owlCarousel({
				items: 3,
				nav: true,
				navText: false,
				dots: false,
				touchDrag  : false,
				mouseDrag  : false,
				center: true,
				responsive : {
					991 : {
						items : 3,
						// onResized: removeLast
					},
					767: {
						items: 2,
					},
					0 : {
						items : 1,
					}
				},
				URLhashListener:true,
	            startPosition: 1
			});

			hist.on('initialized.owl.carousel', function( event ){
				$('.history-year .owl-item:nth-of-type(1)').addClass('initial');
			});

			hist.owlCarousel({
				items: 3,
				nav: true,
				navText: false,
				dots: false,
				touchDrag  : false,
				mouseDrag  : false,
				center: true,
				responsive : {
					991 : {
						items : 3,
						// onResized: removeLast
					},
					767: {
						items: 2,
					},
					0 : {
						items : 1,
					}
				},
				URLhashListener:true,
	            startPosition: 1
			});
		} else {
			owl.on('initialized.owl.carousel', function( event ){
				$('.history-slider .owl-item:nth-of-type(1)').addClass('current');
			});

			owl.owlCarousel({
				items: 3,
				nav: true,
				navText: false,
				dots: false,
				touchDrag  : false,
				mouseDrag  : false,
				center: true,
				responsive : {
					991 : {
						items : 3,
						// onResized: removeLast
					},
					767: {
						items: 2,
					},
					0 : {
						items : 1,
						touchDrag  : true,
						mouseDrag  : true,
					}
				},
			});

			hist.owlCarousel({
				items: 3,
				nav: true,
				navText: false,
				dots: false,
				touchDrag  : false,
				mouseDrag  : false,
				center: true,
				responsive : {
					991 : {
						items : 3,
						// onResized: removeLast
					},
					767: {
						items: 2,
					},
					0 : {
						items : 1,
					}
				},
			});
		}

		$('.custom-next').on('click', function() {
			var current = $('.owl-item.current');

			if($('.history-slider .owl-item:nth-of-type(1)').hasClass('initial')) {
				$('.history-slider .owl-item:nth-of-type(1)').removeClass('initial');
			}

			if($('.history-year .owl-item:nth-of-type(1)').hasClass('initial')) {
				$('.history-year .owl-item:nth-of-type(1)').removeClass('initial');
			}

			if(current.next('.owl-item').length) {
				// if(!current.next('.owl-item').hasClass('active')) {
					owl.trigger('next.owl.carousel');
					hist.trigger('next.owl.carousel');
				// }

				current.removeClass('current');
				// current.find('.history-item').css('opacity', '1');
				// current.find('.history-item').css('opacity', '0.4');
				current.next('.owl-item').addClass('current');

				// currentYear.removeClass('center');
				// currentYear.next('owl-item').addClass('center');
			}
		});

		$('.custom-prev').on('click', function() {
			var current = $('.owl-item.current');
			// var currentYear = $('.history-year .center');

			if(current.prev('.owl-item').length) {
				// if(!current.prev('.owl-item').hasClass('active')) {
					owl.trigger('prev.owl.carousel');
					hist.trigger('prev.owl.carousel');
				// }

				current.removeClass('current');
				// current.find('.history-item').css('opacity', '0.4');
				current.prev('.owl-item').addClass('current');

				// currentYear.removeClass('center');
				// currentYear.prev('.owl-item').addClass('center');
			}
		});

		function removeLast() {
			$('.history-slider .owl-item:nth-of-type(4)').removeClass('active');
			// console.log('removed');
		}

		// removeLast();

		// About Us - Expertise slider
		$('.about-expertise-slider').owlCarousel({
			items: 1,
			nav: true,
			navText: true,
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
		});

		$('.open-popup').magnificPopup({
			type: 'inline',
		});


		$('.open-popup.event-popup').on('click', function() {

			$(".event-gallery").css('display', 'block');
			// Event gallery slider
			$('.event-gallery').owlCarousel({
				items: 1,
				nav: true,
				loop: false,
				navText: false,
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
			dots: false,
			responsive : {
				767 : {
					items : 4,
				},
				0 : {
					items : 1,
				}
			},
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
				$('.single-product .product .images > img').attr('srcset' , $('.owl-item.current img').attr('src'));
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
				$('.single-product .product .images > img').attr('srcset' , $('.owl-item.current img').attr('src'));
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
			$('.single-product .product .images > img').attr('srcset' , newSrc);
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
			}
		}

		var thumb_items = 0;
		$('.thumbnails .owl-stage .owl-item').each(function() {
			thumb_items++;
			console.log(thumb_items);
		});

		var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
		if(thumb_items == 1) {
			if(ww < 768) {
				$('.thumbs-count').css('display', 'none');
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

		var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
		if(ww < 769) {
			$('.related .products > .container > .row').owlCarousel({
				items: 1,
				nav: true,
				navText: false,
				dots: false,
			});

			$('.additional').click(function() {
			    setTimeout(function() {
				    $('.additional-items .products > .container > .row').owlCarousel({
				    	items: 1,
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
		}

		if(window.location.href.indexOf('filterby') > -1 || window.location.href.indexOf('orderby') > -1) {
			$('html, body').animate({
				scrollTop: $('.shop-filter').offset().top - 58
			}, 1000);
		}

		// nav search
		$('.open-search').on('click', function() {
		    $('body').toggleClass('nav-search-active');
		    $('.search-bar').slideToggle();
		});

		// ajax add to wishlist / jewellery box
		var update_wishlist_count = function() {
	        $.ajax({
	            beforeSend: function () {

	            },
	            complete  : function () {

	            },
	            data      : {
	                action: 'update_wishlist_count'
	            },
	            success   : function (data) {
	                $('.header-right-bottom li:first-child a span, .mobile-icons li:first-child a span').text(data);
	                //do something
	            },

	            url: yith_wcwl_l10n.ajax_url
	        });
	    };

	    $('body').on( 'added_to_wishlist removed_from_wishlist', update_wishlist_count );

	    $('.landing-logo').css('opacity', '1');
	    setTimeout(function() {
	    	$('.landing-bangle img').css('opacity', '1');
	    }, 1000);

	    setTimeout(function() {
	    	$('.landing-bangle p').css('opacity', '1');
	    }, 2000);

	    setTimeout(function() {
	    	$('.country-select').css('opacity', '1');
	    }, 3000);

	    $('.cookie-close').on('click', function() {
	    	$('.cookie-notice').slideToggle();
	    });

	}); // end document.ready

	$('.thumbnails a').on('click', function(e) {
		e.preventDefault();
	});

	$(window).load(function() {
		$('.blog-holder').masonry({
			// options
			itemSelector: '.blog-item',
		});

		$('.page-loader').css('display', 'none');
		$('body:not(.no-country) .body-wrap').css({
			'overflow': 'visible',
			'max-height': '100%'
		});
		$('body:not(.no-country) .content-wrap').css('display', 'block');

		// need help popup
		var idleTimer = null;
		var idleState = false;
		var idleWait = 10000;

		$('*').bind('mousemove keydown scroll', function () {
		
		    clearTimeout(idleTimer);
		            
		    if (idleState == true) { 
		        
		        // Reactivated event
		        //$("body").append("<p>Welcome Back.</p>");            
		    }
		    
		    idleState = false;
		    
		    idleTimer = setTimeout(function () { 
		        
		        // Idle Event
		        // $("body").append("<p>You've been idle for " + idleWait/1000 + " seconds.</p>");

		        $('.help-popup').slideDown();

		        idleState = true; 

		    }, idleWait);

		});

		var footerTop, filterOffset;
		var inShop = false;
		var shopFilterHeight = $('.shop-filter').height();
		if($('.shop-filter').length) {
			inShop = true;
			footerTop = $('.footer-top').offset().top;
			filterOffset = $(window).height() - shopFilterHeight;
		}

		$(window).scroll(function(e){
			var windowTop = $(window).scrollTop();

			if(inShop) {
				if((windowTop + filterOffset) >= footerTop) {
					$('.shop-filter').addClass('inactive');
				} else {
					if($('.shop-filter').hasClass('inactive')) {
						// console.log($('.mobile-filter').next('ul').css('display') == 'none');
						if($('.mobile-filter').next('ul').css('display') == 'block') {
							$('.mobile-filter').next('ul').slideToggle();
						}
					}
					$('.shop-filter').removeClass('inactive');
					
				}
			}

			// need help popup
			var footerOffset = $('.footer-top').offset().top;
			var scrollTop = $(window).scrollTop();
			var windowHeight = $(window).height();
			var footer = windowHeight - ( footerOffset - scrollTop );
			if(footer > 0){
				$('.help-popup').css( 'bottom' , footer );
			}
			else{
				$('.help-popup').css( 'bottom' , 0 );
			}

		});

	});

	$('.india').on('click', function(e) {
		e.preventDefault();
		window.location.replace('http://jaipurgems.com');

	});

	var $grid = $('.campaign-holder').masonry({
		// options
		itemSelector: '.single-campaign'
	});

	// layout Masonry after each image loads
	$grid.imagesLoaded().progress( function() {
		$grid.masonry('layout');
	});

	var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
	var headerTop = $('.navbar').offset().top;
	
	$(window).scroll(function(e){
		var windowTop = $(window).scrollTop();

		if(windowTop > headerTop) {
			$('.navbar').addClass('navbar-fixed-top');
			$('.fixed-logo').addClass('active');
			
			if(ww > 768) {
				$('body').css('padding-top', '50px');
			} else {
				$('.mobile-icons').addClass('active');
				$('.mobile-fixed-logo').addClass('active');
			}
		} else {
			$('.fixed-logo').removeClass('active');
			
			$('.navbar').removeClass('navbar-fixed-top');
			if(ww > 768) {
				$('body').css('padding-top', '0');
			} else {
				$('.mobile-icons').removeClass('active');
				$('.mobile-fixed-logo').removeClass('active');
			}
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
	$('.try-at-home, .product .content-bottom li:last-child a, .product-contact').on('click', function(){
	    var product = $(this).data('product');
	    $(".product-hidden").val(product);
	});


	// guest checkout
	$('.guest-form .button').on('click', function(e) {
		e.preventDefault();
		var pattern = new RegExp(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/);
		if( $('#email').val() === '' || !pattern.test($('#email').val()) ){
		    // if($('#email').val() != '') {
		        // alert = 'Please choose a valid email';
		        // return false;
		        // console.log(';asdsa');
		        if(!$('.guest-error').hasClass('active')) {
		        	$('.guest-error').addClass('active');
		        }
		        $('#email').css('border-color', '#e00000');
		    // }
		} else {
			$('#billing_email').val($('.guest-form #email').val());
			$('.guest-error').removeClass('active');
			$('#email').css('border-color', '#e3e3e3');
			$('.checkout_panel.step_1').removeClass('active');
			$('.checkout_panel.step_2').addClass('active');
		}
	});

	// shipping validation
	$('.panel-btn a').on('click', function(e) {
		e.preventDefault();
		console.log('asdasd');
		var billing_valid = true;
		$('.woocommerce-billing-fields .checkout-field').each(function() {
			if($(this).hasClass('woocommerce-invalid') || $(this).find('.input-text').val() == '') {
				$('.billing-error').addClass('active');
				billing_valid = false;
			}
		});

		if(billing_valid == true) {
			$('.checkout_panel.step_2').removeClass('active');
			$('.checkout_panel.step_3').addClass('active');
		}
	});

	// mobile products filter
	$('.mobile-filter').on('click', function(e) {
		e.preventDefault();
		$(this).next('ul').slideToggle();
	});

	// header contact dropdown
	$('.contact-dropdown').on('click', function() {
		$('.contact-dropdown-details').slideToggle();
	});

})(jQuery);

// social sharing popup
function popitup(url) {
	newwindow=window.open(url,'name','height=200,width=400');
	if (window.focus) {newwindow.focus()}
	return false;
}






