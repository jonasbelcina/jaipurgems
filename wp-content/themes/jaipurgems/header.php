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

<body <?php body_class(); ?>>
	<header>
        <div class="navbar-top">
            <div class="header-left">
                We Ship To <span class="uae">United Arab Emirates</span><span class="uae">UAE</span>
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
                    <li><a href="#" data-toggle="modal" data-target="#contactForm">Contact</a></li>
                </ul>
            </div>

            <a class="navbar-brand" href="<?php echo home_url(); ?>">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" alt="Jaipur Gems" />
            </a>

            <div class="header-right-bottom">
                <ul>
                    <li><a href="<?php echo home_url(); ?>/my-account"><?php echo (is_user_logged_in()) ? 'My Account' : 'Login or Register'; ?></a></li>
                    <li><a href="<?php echo WC()->cart->get_cart_url(); ?>">(<span class="cart-qty"><?php echo WC()->cart->get_cart_contents_count(); ?></span>) Shopping Cart</a></li>
                </ul>
            </div>
        </div>

        <nav class="navbar navbar-default">
            <div class="container">
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
                                    <input type="text" name="s" placeholder="Search">
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













