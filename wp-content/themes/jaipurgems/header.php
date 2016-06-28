<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */


	if(isset($_COOKIE['country']) && $_COOKIE['country'] != '' && isset($_COOKIE['country_code']) && $_COOKIE['country_code'] != ''){
		$country = $_COOKIE['country'];
		$country_code = $_COOKIE['country_code'];
	}
	else{
		$ip = get_client_ip();
		$location = json_decode(file_get_contents('http://api.ipinfodb.com/v3/ip-city/?key=ed7d94447150af404569fcd04b95876cc93d0efa91be933d47632085239bdea2&ip='.$ip.'&format=json') , true);

		if(isset($location['countryName']) && $location['countryName'] != '' && $location['countryName'] != '-') {
			$country  = $location['countryName'];
			$country_code = strtolower($location['countryCode']);
		} else {
			// $country = 'United Arab Emirates';
		}
		setcookie('country' , $country);
		setcookie('country_code' , $country_code);
		// setcookie('location', $location);

		session_start();
	}

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>
	<link rel="shortcut icon" href="<?php the_field('favicon' , 'options'); ?>" />
	<?php if(is_single()) : ?>
		<meta property="og:image" content="<?php get_the_post_thumbnail('full'); ?>" />
	<?php endif; ?>

	<?php wp_head(); ?>
</head>

<?php 
$addtl_class = ' ';
$selected_country = '';

if (isset($_POST['location'])) {   
    $_SESSION['selected_country'] = $_POST['location'];
}

if(!$_SESSION['selected_country']) {
  	// echo "The cookie: '" . $selected_country . "' is not set.";
  	$addtl_class = 'no-country';
} else {
  	// echo "The cookie '" . $selected_country . "' is set.";
  	// echo "Cookie is:  " . $_COOKIE['selected_country'];
  	// $selected_country = $_COOKIE['selected_country'];
}

// echo $_COOKIE['selected_country'];

// if($selected_country == '') {
// 	$addtl_class = 'no-country';
// }
// var_dump($_COOKIE);
?>

<body <?php body_class($addtl_class); ?>>
	<div class="page-loader">
		<img id="slidecaption" src="<?php echo get_template_directory_uri(); ?>/assets/images/crown.png" />
	</div>

	<?php if(!$_SESSION['selected_country']) { ?>
		<div class="landing">
			<div class="landing-content">
				<img class="landing-logo" src="<?php echo get_template_directory_uri(); ?>/assets/images/landing-logo.png" alt="Jaipur Gems" />
				<div class="landing-bangle">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/landing-bangle.png" alt="Jaipur Gems" />
					<p>Select Your Location:</p>
					<form class="country-select" method="post">
						<button type="submit" name="location" value="india" class="india">India</button>
						<button type="submit" name="location" value="international" class="international">International</button>
					</form>
				</div>
			</div>
		</div>
	<?php } ?>

	<header>
		<div class="navbar-top">
			<div class="header-left">
				Insured Express Shipping To <span class="uae"><?php echo $country; ?></span><img src="http://www.geonames.org/flags/x/<?php echo $country_code; ?>.gif" /><span class="uae">UAE</span>
			</div>

			<div class="header-right-top">
				<ul>
					<li>
						<form method="get" class="open-search" action="<?php echo home_url();?>" style="">
							<input type="text" name="s" placeholder="Search">
							<input type="hidden" name="post_type" value="product">
							<button type="button"></button>
						</form>
					</li>
					<li><a href="<?php echo home_url(); ?>/store-locator">Store Locator</a></li>
					<li>
						<div class="contact-dropdown">
							Contact
							<div class="contact-dropdown-details">
								<div class="service">
									<span>Customer Service Office Hours:</span>
									<p>Sat to Thu 9:00 AM to 6:00 PM (GMT +04:00)</p>
								</div>

								<div class="store">
									<p style="padding-bottom: 5px;">
										<i class="fa fa-home"></i>&nbsp;&nbsp;25H Almas Tower<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JLT Dubai
									</p>
									<p>
										<a href="tel:+971528804545"><i class="fa fa-phone" style="font-size: 14px;"></i>&nbsp;&nbsp;Helpline: +971 52 880 4545 <span>(Available)</span></a>
									</p>
								</div>

								<div class="chat">
									<p>
										<a href=""><i class="fa fa-comment-o"></i>&nbsp;&nbsp;Live Chat <span>(Available)</span></a>
									</p>
									<p>
										<a href="mailto:dubai@jaipurgems.com"><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;Email: dubai@jaipurgems.com <span>(Available)</span></a>
									</p>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<a class="navbar-brand" href="<?php echo home_url(); ?>">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-new.png" alt="Jaipur Gems" />
			</a>

			<div class="header-right-bottom">
				<ul>
					<li><a href="<?php echo home_url(); ?>/wishlist/view"><span><?php echo yith_wcwl_count_products(); ?></span><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
					<li><a href="<?php echo home_url(); ?>/my-account"><i class="fa fa-user" aria-hidden="true"></i></a></li>
					<li><a href="<?php echo WC()->cart->get_cart_url(); ?>"><span class="cart-qty"><?php echo WC()->cart->get_cart_contents_count(); ?></span><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div>

		<nav class="navbar navbar-default">
			<div class="container">

			<a class="mobile-fixed-logo" href="<?php echo home_url(); ?>">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/crown-black.png" alt="Jaipur Gems" />
			</a>

			<ul class="mobile-icons">
				<li><a href="<?php echo home_url(); ?>/wishlist/view"><span><?php echo yith_wcwl_count_products(); ?></span><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
				<li><a href="<?php echo home_url(); ?>/my-account"><i class="fa fa-user" aria-hidden="true"></i></a></li>
				<li><a href="<?php echo WC()->cart->get_cart_url(); ?>"><span class="cart-qty"><?php echo WC()->cart->get_cart_contents_count(); ?></span><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
			</ul>

				<div class="navbar-header">

					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li>
								<a href="<?php echo home_url(); ?>/product-category/jewellery" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Jewellery <span class="glyphicon glyphicon-plus"></span><i class="fa fa-angle-down" aria-hidden="true"></i></a>

								<div class="dropdown-menu main-dropdown">
									<!-- <div class="container"> -->
										<!-- <div class="row"> -->
											<div class="dropdown-sub">
												<h2>Jewellery<span>Explore Jewellery</span></h2>
												<?php
													$args = array(
																'taxonomy'      => 'product_cat',
																'parent'        => 6,
																'hide_empty'    => 0
															);

													$child_categories = get_categories($args);
													if($child_categories) : ?>
														<ul>
															<?php foreach($child_categories as $child_category) : ?>
																<li>
																	<a href="<?php echo get_term_link($child_category, 'product_cat'); ?>"><?php echo $child_category->name; ?></a>
																	<?php $drop_img = get_field('dropdown_image', 'product_cat_' . $child_category->term_id); ?>
																	<img class="dropdown-img" src="<?php echo $drop_img['url']; ?>" alt="<?php echo $drop_img['alt']; ?>" />
																</li>
															<?php endforeach; ?>
														</ul>
													<?php endif;
												?>
											</div>

										<!-- </div> -->
									<!-- </div> -->
								</div>
							</li>
							<li><a href="<?php echo home_url(); ?>/collection/sparkling-diamond-collection">Diamonds</a></li>
							<li><a href="<?php echo home_url(); ?>/collections">Collections</a></li>
							<li><a href="<?php echo home_url(); ?>/about-us">Our Legacy</a></li>
							<li>
								<a href="#" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Our World <span class="glyphicon glyphicon-plus"></span><i class="fa fa-angle-down" aria-hidden="true"></i></a>

								<div class="dropdown-menu main-dropdown">
									<div class="container">
										<div class="row">
											<div class="dropdown-sub">
												<h2>Our World<span>Explore</span></h2>
												<ul>
													<li>
														<a href="<?php echo home_url(); ?>/campaigns">Campaigns</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/dropdown-campaigns.jpg" alt="Campaigns" />
													</li>
													<li>
														<a href="<?php echo home_url(); ?>/media">Media</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/dropdown-media.jpg" alt="Media" />
													</li>
													<li>
														<a href="<?php echo home_url(); ?>/events">Events</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/dropdown-events.jpg" alt="Events" />
													</li> 
													<li>
														<a href="<?php echo home_url(); ?>/celebrities">Celebrities</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/DROPDWN-celeb.jpg" alt="Celebrities" />
													</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
							</li>
							<li><a href="<?php echo home_url(); ?>/my-account">Login or Register</a></li>
							<li><a href="" data-toggle="modal" data-target="#contactForm">Contact</a></li>
						</ul>

						<a class="fixed-logo" href="<?php echo home_url(); ?>">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/images/crown.png" alt="Jaipur Gems" />
						</a>
					</div><!-- #navbar -->

				</div>
			</div>
		</nav>
	</header>

		<div class="search-bar">
			<div class="container">
				<div class="open-search">
					<span class="glyphicon glyphicon-remove"></span>
				</div>

				<div class="search-box">
					<div class="col-md-8 col-md-offset-2">
						<form class="search" method="get">
							<div class="col-xs-10">
								<div class="row">
									<input type="text" name="s" placeholder="I am looking for">
									<input type="hidden" name="post_type" value="product">
								</div>
							</div>

							<div class="col-xs-2">
								<div class="row">
									<button type="submit"><span class="glyphicon glyphicon-search"></span></button>
								</div>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>













