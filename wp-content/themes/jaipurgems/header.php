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

	<?php if(is_single()) : ?>
		<meta property="og:image" content="<?php get_the_post_thumbnail('full'); ?>" />
	<?php endif; ?>

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<header>
        <div class="navbar-top">
            <div class="header-left">
                We Ship To <span class="uae">United Arab Emirates</span>
            </div>

            <div class="header-right-top">
                <ul>
                    <li>
                		<form method="get" action="<?php echo home_url();?>" style="">
            		  		<input type="text" name="s" placeholder="Search">
            		  		<input type="hidden" name="post_type" value="product">
            		  		<button type="submit"></button>
                		</form>
                    </li>
                    <li><a href="#">Store Locator</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>

            <a class="navbar-brand" href="<?php echo home_url(); ?>">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" alt="Jaipur Gems" />
            </a>

            <div class="header-right-bottom">
                <ul>
                    <li><a href="#">Login or Register</a></li>
                    <li><a href="#">(<span class="cart-qty">0</span>) Shopping Cart</a></li>
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
                                <a href="<?php echo home_url(); ?>/product-category/jewellery" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Jewellery <span class="glyphicon glyphicon-plus"></span></a>

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
                                                <!-- <ul>
                                                    <li>
                                                        <a href="#">Necklaces</a>
                                                        <img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/bangles-tile.jpg" alt="bangles" />
                                                    </li>
                                                    <li>
                                                        <a href="#">Earrings</a>
                                                        <img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/earrings-sub.jpg" alt="earrings" />
                                                    </li>
                                                    <li>
                                                        <a href="#">Bangles</a>
                                                        <img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/bangles-tile.jpg" alt="bangles" />
                                                    </li> 
                                                </ul> -->
                                            </div>

                                        <!-- </div> -->
                                    <!-- </div> -->
                                </div>
                            </li>
                            <li><a href="#">Diamonds</a></li>
                            <li><a href="#">Collections</a></li>
                            <li><a href="<?php echo home_url(); ?>/about-us">Our Legacy</a></li>
                            <li>
                            	<a href="#" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Our World <span class="glyphicon glyphicon-plus"></span></a>

                            	<div class="dropdown-menu main-dropdown">
                            	    <div class="container">
                            	        <div class="row">
                            	            <div class="dropdown-sub">
                            	                <h2>Our World<span>Explore</span></h2>
                            	                <ul>
                            	                    <li>
                            	                        <a href="#">Campaigns</a>
                            	                        <img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/bangles-tile.jpg" alt="bangles" />
                            	                    </li>
                            	                    <li>
                            	                        <a href="#">Media</a>
                            	                        <img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/earrings-sub.jpg" alt="earrings" />
                            	                    </li>
                            	                    <li>
                            	                        <a href="#">Events</a>
                            	                        <img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/bangles-tile.jpg" alt="bangles" />
                            	                    </li> 
                            	                </ul>
                            	            </div>

                            	        </div>
                            	    </div>
                            	</div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
	</header>













