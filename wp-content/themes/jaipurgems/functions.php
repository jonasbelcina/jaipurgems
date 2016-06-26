<?php
/**
 * Twenty Sixteen functions and definitions
 *
 * Set up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 *
 * When using a child theme you can override certain functions (those wrapped
 * in a function_exists() call) by defining them first in your child theme's
 * functions.php file. The child theme's functions.php file is included before
 * the parent theme's file, so the child theme functions would be used.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

/**
 * Enqueue scripts and styles.
 */
function jg_scripts() {
	$suffix = defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ? '' : '.min';
	$themecsspath = get_stylesheet_directory() . '/assets/css/style.css';
	$themejspath = get_stylesheet_directory() . '/assets/js/script.js';

	wp_register_style(
		'jg-style',
		get_stylesheet_directory_uri() . '/assets/css/style.css',
		array(),
		filemtime( $themecsspath )
	);
	wp_register_style('jg-bootstrap', get_template_directory_uri().'/assets/vendor/bootstrap' . $suffix . '.css', array(), '3.3.6' );
	wp_register_style('jg-font-awesome', get_template_directory_uri().'/assets/fonts/FontAwesome/css/font-awesome' . $suffix . '.css', array(), '4.6.1' );
	wp_register_style('vendor-owl-carousel', get_template_directory_uri().'/assets/vendor/owl.carousel.css', array(), '2.0' );
	wp_register_style('vendor-magnific-popup', get_template_directory_uri().'/assets/vendor/magnific-popup.css', array(), '1.0' );

	wp_register_script( 'google-maps', 'https://maps.google.com/maps/api/js?sensor=false', array(), false , false);
	wp_register_script( 'vendor-owl-carousel', get_template_directory_uri().'/assets/vendor/owl.carousel' . $suffix . '.js', array( 'jquery'), '2.0', true );
	wp_register_script( 'jg-bootstrap', get_template_directory_uri().'/assets/vendor/bootstrap' . $suffix . '.js', array(), '3.3.6', true );
	wp_register_script( 'jg-bootstrap-hover-dropdown', get_template_directory_uri().'/assets/vendor/bootstrap-hover-dropdown' . $suffix . '.js', array(), '1.0', true );
	wp_register_script( 'vendor-masonry', get_template_directory_uri().'/assets/vendor/masonry.pkgd' . $suffix . '.js', array(), '1.0.0', true );
	wp_register_script( 'vendor-magnific-popup', get_template_directory_uri().'/assets/vendor/jquery.magnific-popup' . $suffix . '.js', array(), '1.0.0', true );
	wp_register_script( 'vendor-images-loaded', get_template_directory_uri().'/assets/vendor/imagesloaded.pkgd' . $suffix . '.js', array(), '1.0.0', true );
	wp_register_script( 'vendor-elevate-zoom', get_template_directory_uri().'/assets/vendor/jquery.elevatezoom.js', array(), '1.0.0', true );
	wp_register_script( 'jg-script', get_template_directory_uri().'/assets/js/script.js', array( 'jquery'), filemtime( $themejspath ), true );

	wp_enqueue_style('jg-bootstrap');
	wp_enqueue_style('jg-font-awesome');
	wp_enqueue_style('vendor-owl-carousel');
	wp_enqueue_style('vendor-magnific-popup');
	wp_enqueue_style('jg-style');

	wp_enqueue_script('google-maps');
	wp_enqueue_script('vendor-owl-carousel');
	wp_enqueue_script('vendor-masonry');
	wp_enqueue_script('vendor-magnific-popup');
	wp_enqueue_script('vendor-images-loaded');
	wp_enqueue_script('vendor-elevate-zoom');
	wp_enqueue_script('jg-bootstrap');
	wp_enqueue_script('jg-bootstrap-hover-dropdown');
	wp_enqueue_script('jg-script');
}

add_action( 'wp_enqueue_scripts', 'jg_scripts' );

// Load required plugins
require get_template_directory() . '/plugins/acf-gallery/acf-gallery.php';
require get_template_directory() . '/plugins/acf-options-page/acf-options-page.php';
require get_template_directory() . '/plugins/advanced-custom-fields/acf.php';
require get_template_directory() . '/plugins/acf-repeater/acf-repeater.php';

/**
 * Twenty Sixteen only works in WordPress 4.4 or later.
 */
if ( version_compare( $GLOBALS['wp_version'], '4.4-alpha', '<' ) ) {
	require get_template_directory() . '/inc/back-compat.php';
}

if ( ! function_exists( 'twentysixteen_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 *
 * Create your own twentysixteen_setup() function to override in a child theme.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on Twenty Sixteen, use a find and replace
	 * to change 'twentysixteen' to the name of your theme in all the template files
	 */
	load_theme_textdomain( 'twentysixteen', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for custom logo.
	 *
	 *  @since Twenty Sixteen 1.2
	 */
	add_theme_support( 'custom-logo', array(
		'height'      => 240,
		'width'       => 240,
		'flex-height' => true,
	) );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
	 */
	add_theme_support( 'post-thumbnails' );
	set_post_thumbnail_size( 1200, 9999 );

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'primary' => __( 'Primary Menu', 'twentysixteen' ),
		'social'  => __( 'Social Links Menu', 'twentysixteen' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'status',
		'audio',
		'chat',
	) );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, icons, and column width.
	 */
	add_editor_style( array( 'assets/css/editor-style.css', twentysixteen_fonts_url() ) );

	// Indicate widget sidebars can use selective refresh in the Customizer.
	add_theme_support( 'customize-selective-refresh-widgets' );
}
endif; // twentysixteen_setup
add_action( 'after_setup_theme', 'twentysixteen_setup' );

/**
 * Sets the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'twentysixteen_content_width', 840 );
}
add_action( 'after_setup_theme', 'twentysixteen_content_width', 0 );

/**
 * Registers a widget area.
 *
 * @link https://developer.wordpress.org/reference/functions/register_sidebar/
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Sidebar', 'twentysixteen' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar.', 'twentysixteen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Content Bottom 1', 'twentysixteen' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'Appears at the bottom of the content on posts and pages.', 'twentysixteen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Content Bottom 2', 'twentysixteen' ),
		'id'            => 'sidebar-3',
		'description'   => __( 'Appears at the bottom of the content on posts and pages.', 'twentysixteen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'twentysixteen_widgets_init' );

if ( ! function_exists( 'twentysixteen_fonts_url' ) ) :
/**
 * Register Google fonts for Twenty Sixteen.
 *
 * Create your own twentysixteen_fonts_url() function to override in a child theme.
 *
 * @since Twenty Sixteen 1.0
 *
 * @return string Google fonts URL for the theme.
 */
function twentysixteen_fonts_url() {
	$fonts_url = '';
	$fonts     = array();
	$subsets   = 'latin,latin-ext';

	/* translators: If there are characters in your language that are not supported by Merriweather, translate this to 'off'. Do not translate into your own language. */
	if ( 'off' !== _x( 'on', 'Merriweather font: on or off', 'twentysixteen' ) ) {
		$fonts[] = 'Merriweather:400,700,900,400italic,700italic,900italic';
	}

	/* translators: If there are characters in your language that are not supported by Montserrat, translate this to 'off'. Do not translate into your own language. */
	if ( 'off' !== _x( 'on', 'Montserrat font: on or off', 'twentysixteen' ) ) {
		$fonts[] = 'Montserrat:400,700';
	}

	/* translators: If there are characters in your language that are not supported by Inconsolata, translate this to 'off'. Do not translate into your own language. */
	if ( 'off' !== _x( 'on', 'Inconsolata font: on or off', 'twentysixteen' ) ) {
		$fonts[] = 'Inconsolata:400';
	}

	if ( $fonts ) {
		$fonts_url = add_query_arg( array(
			'family' => urlencode( implode( '|', $fonts ) ),
			'subset' => urlencode( $subsets ),
		), 'https://fonts.googleapis.com/css' );
	}

	return $fonts_url;
}
endif;

/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_javascript_detection() {
	echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}
add_action( 'wp_head', 'twentysixteen_javascript_detection', 0 );

/**
 * Enqueues scripts and styles.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'twentysixteen-fonts', twentysixteen_fonts_url(), array(), null );

	// Add Genericons, used in the main stylesheet.
	wp_enqueue_style( 'genericons', get_template_directory_uri() . '/genericons/genericons.css', array(), '3.4.1' );

	// Theme stylesheet.
	wp_enqueue_style( 'twentysixteen-style', get_stylesheet_uri() );

	// Load the Internet Explorer specific stylesheet.
	wp_enqueue_style( 'twentysixteen-ie', get_template_directory_uri() . '/assets/css/ie.css', array( 'twentysixteen-style' ), '20160412' );
	wp_style_add_data( 'twentysixteen-ie', 'conditional', 'lt IE 10' );

	// Load the Internet Explorer 8 specific stylesheet.
	wp_enqueue_style( 'twentysixteen-ie8', get_template_directory_uri() . '/assets/css/ie8.css', array( 'twentysixteen-style' ), '20160412' );
	wp_style_add_data( 'twentysixteen-ie8', 'conditional', 'lt IE 9' );

	// Load the Internet Explorer 7 specific stylesheet.
	wp_enqueue_style( 'twentysixteen-ie7', get_template_directory_uri() . '/assets/css/ie7.css', array( 'twentysixteen-style' ), '20160412' );
	wp_style_add_data( 'twentysixteen-ie7', 'conditional', 'lt IE 8' );

	// Load the html5 shiv.
	wp_enqueue_script( 'twentysixteen-html5', get_template_directory_uri() . '/assets/js/html5.js', array(), '3.7.3' );
	wp_script_add_data( 'twentysixteen-html5', 'conditional', 'lt IE 9' );

	wp_enqueue_script( 'twentysixteen-skip-link-focus-fix', get_template_directory_uri() . '/assets/js/skip-link-focus-fix.js', array(), '20160412', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}

	if ( is_singular() && wp_attachment_is_image() ) {
		wp_enqueue_script( 'twentysixteen-keyboard-image-navigation', get_template_directory_uri() . '/assets/js/keyboard-image-navigation.js', array( 'jquery' ), '20160412' );
	}

	wp_enqueue_script( 'twentysixteen-script', get_template_directory_uri() . '/assets/js/functions.js', array( 'jquery' ), '20160412', true );

	wp_localize_script( 'twentysixteen-script', 'screenReaderText', array(
		'expand'   => __( 'expand child menu', 'twentysixteen' ),
		'collapse' => __( 'collapse child menu', 'twentysixteen' ),
	) );
}
add_action( 'wp_enqueue_scripts', 'twentysixteen_scripts' );

/**
 * Adds custom classes to the array of body classes.
 *
 * @since Twenty Sixteen 1.0
 *
 * @param array $classes Classes for the body element.
 * @return array (Maybe) filtered body classes.
 */
function twentysixteen_body_classes( $classes ) {
	// Adds a class of custom-background-image to sites with a custom background image.
	if ( get_background_image() ) {
		$classes[] = 'custom-background-image';
	}

	// Adds a class of group-blog to sites with more than 1 published author.
	if ( is_multi_author() ) {
		$classes[] = 'group-blog';
	}

	// Adds a class of no-sidebar to sites without active sidebar.
	if ( ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = 'no-sidebar';
	}

	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}

	return $classes;
}
add_filter( 'body_class', 'twentysixteen_body_classes' );

/**
 * Converts a HEX value to RGB.
 *
 * @since Twenty Sixteen 1.0
 *
 * @param string $color The original color, in 3- or 6-digit hexadecimal form.
 * @return array Array containing RGB (red, green, and blue) values for the given
 *               HEX code, empty array otherwise.
 */
function twentysixteen_hex2rgb( $color ) {
	$color = trim( $color, '#' );

	if ( strlen( $color ) === 3 ) {
		$r = hexdec( substr( $color, 0, 1 ).substr( $color, 0, 1 ) );
		$g = hexdec( substr( $color, 1, 1 ).substr( $color, 1, 1 ) );
		$b = hexdec( substr( $color, 2, 1 ).substr( $color, 2, 1 ) );
	} else if ( strlen( $color ) === 6 ) {
		$r = hexdec( substr( $color, 0, 2 ) );
		$g = hexdec( substr( $color, 2, 2 ) );
		$b = hexdec( substr( $color, 4, 2 ) );
	} else {
		return array();
	}

	return array( 'red' => $r, 'green' => $g, 'blue' => $b );
}

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for content images
 *
 * @since Twenty Sixteen 1.0
 *
 * @param string $sizes A source size value for use in a 'sizes' attribute.
 * @param array  $size  Image size. Accepts an array of width and height
 *                      values in pixels (in that order).
 * @return string A source size value for use in a content image 'sizes' attribute.
 */
function twentysixteen_content_image_sizes_attr( $sizes, $size ) {
	$width = $size[0];

	840 <= $width && $sizes = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px';

	if ( 'page' === get_post_type() ) {
		840 > $width && $sizes = '(max-width: ' . $width . 'px) 85vw, ' . $width . 'px';
	} else {
		840 > $width && 600 <= $width && $sizes = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px';
		600 > $width && $sizes = '(max-width: ' . $width . 'px) 85vw, ' . $width . 'px';
	}

	return $sizes;
}
add_filter( 'wp_calculate_image_sizes', 'twentysixteen_content_image_sizes_attr', 10 , 2 );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for post thumbnails
 *
 * @since Twenty Sixteen 1.0
 *
 * @param array $attr Attributes for the image markup.
 * @param int   $attachment Image attachment ID.
 * @param array $size Registered image size or flat array of height and width dimensions.
 * @return string A source size value for use in a post thumbnail 'sizes' attribute.
 */
function twentysixteen_post_thumbnail_sizes_attr( $attr, $attachment, $size ) {
	if ( 'post-thumbnail' === $size ) {
		is_active_sidebar( 'sidebar-1' ) && $attr['sizes'] = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 60vw, (max-width: 1362px) 62vw, 840px';
		! is_active_sidebar( 'sidebar-1' ) && $attr['sizes'] = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 88vw, 1200px';
	}
	return $attr;
}
add_filter( 'wp_get_attachment_image_attributes', 'twentysixteen_post_thumbnail_sizes_attr', 10 , 3 );

/**
 * Modifies tag cloud widget arguments to have all tags in the widget same font size.
 *
 * @since Twenty Sixteen 1.1
 *
 * @param array $args Arguments for tag cloud widget.
 * @return array A new modified arguments.
 */
function twentysixteen_widget_tag_cloud_args( $args ) {
	$args['largest'] = 1;
	$args['smallest'] = 1;
	$args['unit'] = 'em';
	return $args;
}
add_filter( 'widget_tag_cloud_args', 'twentysixteen_widget_tag_cloud_args' );

/*
 *
 * Custom functions
 *
 */

// shorten character length for post title or content etc..
function shortenText($text, $num, $ellipsis) { // Function name shortenText
	$chars_limit = $num; // Character length
	$chars_text = strlen($text);
	$text = $text." ";
	$text = substr($text,0,$chars_limit);
	$text = substr($text,0,strrpos($text,' '));

	if ($chars_text > $chars_limit)
	 	{ $text = $text . $ellipsis; } // Ellipsis
	 	return $text;
}

// ignore sticky posts on main blog page
function jg_ignore_sticky( $query ) {
	$obj = get_queried_object();
	// var_dump(get_queried_object());
    if ( is_home() && $query->is_main_query() ) {
        // $query->set('ignore_sticky_posts', 1);
        $query->set( 'post__not_in', get_option( 'sticky_posts' ) ); 
    }
}
// add_action( 'pre_get_posts', 'jg_ignore_sticky' );

function set_archive_posts_per_page( $query ) {
    if ( is_admin() || ! $query->is_main_query() )
        return;

    if ( is_post_type_archive( 'campaigns' ) || is_post_type_archive( 'media' ) ) {
        $query->set( 'posts_per_page', -1 );
        return;
    }
}
add_action( 'pre_get_posts', 'set_archive_posts_per_page', 1 );

// enable disqus shortcode
function disqus_embed($disqus_shortname) {
    global $post;
    wp_enqueue_script('disqus_embed','http://'.$disqus_shortname.'.disqus.com/embed.js');
    echo '<div id="disqus_thread"></div>
    <script type="text/javascript">
        var disqus_shortname = "'.$disqus_shortname.'";
        var disqus_title = "'.$post->post_title.'";
        var disqus_url = "'.get_permalink($post->ID).'";
        var disqus_identifier = "'.$disqus_shortname.'-'.$post->ID.'";
    </script>';
}

// Register Bootstrap Navigation Walker
include get_template_directory() . '/inc/wp_bootstrap_navwalker.php';

register_nav_menus( array(
    'primary' => __( 'Primary Menu', 'jaipurgems' ),
) );

function get_product_top_level_category ( $product_id ) {
 
    $product_terms            =  get_the_terms ( $product_id, 'product_cat' );
    $product_category         =  $product_terms[0]->parent;
    $product_category_term    =  get_term ( $product_category, 'product_cat' );
    $product_category_parent  =  $product_category_term->parent;
    $product_top_category     =  $product_category_term->term_id;

    while ( $product_category_parent  !=  0 ) {
            $product_category_term    =  get_term ( $product_category_parent, 'product_cat' );
            $product_category_parent  =  $product_category_term->parent;
            $product_top_category     =  $product_category_term->term_id;
    }

    return $product_top_category;
}

// Add custom type
add_filter('acf/location/rule_types', 'acf_location_rules_types');
function acf_location_rules_types( $choices )
{
    $choices['Woocommerce']['product_parent_category'] = 'Product Parent Category';

    return $choices;
}

// Add custom value
add_filter('acf/location/rule_values/product_parent_category', 'acf_location_rules_values_product_parent_category');
function acf_location_rules_values_product_parent_category( $choices )
{
    $args = array(
    			'taxonomy'		=> 'product_cat',
    			'hide_empty' 	=> 0,
    			'parent'		=> 0
    		);

    $categories = get_categories($args);

    if($categories) {
    	foreach ($categories as $cat) {
    		$choices[$cat->term_id] = $cat->name;
    	}
    }

    return $choices;
}

// Matching the rule
add_filter('acf/location/rule_match/product_parent_category', 'acf_location_rules_match_product_parent_category', 10, 3);
function acf_location_rules_match_product_parent_category( $match, $rule, $options )
{
    if(isset($_GET['taxonomy']) && isset($_GET['tag_ID'])) {
    	$current_cat = $_GET['tag_ID'];
    }

    $selected_cat = $rule['value'];
    // print_r(array($rule));

    $cat_id = intval($current_cat);

    $args = array(
    			'taxonomy'		=> 'product_cat',
    			'child_of'		=> $selected_cat,
    			'hide_empty'	=> 0
			);

    $categories = get_terms($args);
    // var_dump($categories);
    $child_of = false;
    foreach ($categories as $cat) {
    	if($cat->term_id == $cat_id) {
    		if($cat->term_id == $cat_id) {
    			$child_of = true;
    		}
    	}
    }

    // var_dump($child_of);

    if($rule['operator'] == "==") {
    	$match = ($current_cat == $selected_cat || $child_of);
    }
    elseif($rule['operator'] == "!=") {
    	$match = ($current_cat != $selected_cat || !$child_of);
    }

    return $match;
}

add_action( 'after_setup_theme', 'woocommerce_support' );
function woocommerce_support() {
    add_theme_support( 'woocommerce' );
}

// redirect to checkout page after clicking add to cart button
add_filter ('woocommerce_add_to_cart_redirect', 'woo_redirect_to_checkout');
function woo_redirect_to_checkout() {
	$checkout_url = WC()->cart->get_checkout_url();
	return $checkout_url;
}

// Display xx products per page. Goes in functions.php
add_filter( 'loop_shop_per_page', create_function( '$cols', 'return 10;' ), 20 );

// remove woocommerce result count and sorting option
remove_action('woocommerce_before_shop_loop', 'woocommerce_result_count', 20);

// remove product loop thumbnail
// remove_action('woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10);

// remove ratings
remove_action('woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_rating', 5);

// rearrange single product details
remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_price', 10);
add_action('woocommerce_single_product_summary', 'woocommerce_template_single_price', 25);

// remove product meta (categories)
remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40);

// rmeove data tabs
remove_action('woocommerce_after_single_product_summary', 'woocommerce_output_product_data_tabs', 10);


add_filter( 'woocommerce_currencies', 'add_my_currency' );
function add_my_currency( $currencies ) {
     $currencies['AED'] = __( 'Currency name', 'woocommerce' );
     return $currencies;
}

add_filter('woocommerce_currency_symbol', 'add_my_currency_symbol', 10, 2);
function add_my_currency_symbol( $currency_symbol, $currency ) {
     switch( $currency ) {
          case 'AED': $currency_symbol = ' AED'; break;
     }
     return $currency_symbol;
}

//Store the custom field for size
add_filter( 'woocommerce_add_cart_item_data', 'add_cart_item_custom_data_vase', 10, 2 );
function add_cart_item_custom_data_vase( $cart_item_meta, $product_id ) {

    global $woocommerce;

    if(is_array($_POST['size'])){
        foreach ($_POST['size'] as $key => $size) {
            if($key == $product_id && $size != '')
                $cart_item_meta['size'] = $size ;
        }
        
    }
    else{
        if( $_POST['size'] != '')
            $cart_item_meta['size'] = $_POST['size'] ;
    }
    return $cart_item_meta; 
}

//Get it from the session and add it to the cart variable
function get_cart_items_from_session( $item, $values, $key ) {
    if ( array_key_exists( 'size', $values ) )
        $item[ 'size' ] = $values['size'];
    return $item;
}
add_filter( 'woocommerce_get_cart_item_from_session', 'get_cart_items_from_session', 1, 3 );

add_action('woocommerce_add_order_item_meta','wdm_add_values_to_order_item_meta',1,2);
function wdm_add_values_to_order_item_meta($item_id, $values)
{
        global $woocommerce,$wpdb;
        $user_custom_values = $values['size'];
        if(!empty($user_custom_values))
        {
            wc_add_order_item_meta($item_id,'size',$user_custom_values);  
        }
}

add_action('woocommerce_before_cart_item_quantity_zero','wdm_remove_user_custom_data_options_from_cart',1,1);
function wdm_remove_user_custom_data_options_from_cart($cart_item_key)
{
        global $woocommerce;
        // Get cart
        $cart = $woocommerce->cart->get_cart();
        // For each item in cart, if item is upsell of deleted product, delete it
        foreach( $cart as $key => $values)
        {
        // if ( $values['size'] == $cart_item_key )
            unset( $woocommerce->cart->cart_contents[ $key ] );
        }
}

// get top level category of post
function get_top_parent_cat($cat_ID)
{
	$cat = get_category( $cat_ID );
	$new_cat_id = $cat->category_parent;

	if($new_cat_id != 0) {
		return (get_top_parent_cat($new_cat_id));
	}

	return $cat_ID;
}

add_action('woocommerce_share','wooshare');
function wooshare(){
	$link = get_permalink(); ?>
	<div class="share-buttons">
		<div class="label">Share:</div>
	   <a target="_blank" class="share-link" href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink(); ?>" onclick="return popitup('https://www.facebook.com/sharer/sharer.php?u=<?php echo $link; ?>')" target="_blank"></a>
	   <a target="_blank" class="share-link" href="https://twitter.com/home?status=<?php echo shortenText(get_the_content(), 110, ''); ?> <?php echo $link; ?>" onclick="return popitup('https://twitter.com/home?status=<?php echo shortenText(get_the_content(), 110, ''); ?> <?php echo $link; ?>');"></a>
	   <a target="_blank" class="share-link" href="https://plus.google.com/share?url=<?php echo $link;?>"  onclick="return popitup('https://plus.google.com/share?url=<?php echo $link;?>')"></a>
	   <a target="_blank" class="share-link" href="https://pinterest.com/pin/create/button/?url=<?php echo $link; ?>&media=<?php echo wp_get_attachment_url( get_post_thumbnail_id() ); ?>&description=<?php echo shortenText(get_the_content(), 110, '');?>" onclick="return popitup('https://pinterest.com/pin/create/button/?url=<?php echo $link; ?>&media=<?php echo wp_get_attachment_url( get_post_thumbnail_id() ); ?>&description=<?php echo shortenText(get_the_content(), 110, '');?>');"></a>

	   <a href="<?php the_permalink(); ?>">Contact us</a>
	</div>
<?php
}

// get facebook followers count - 1223633204329440|euvE-dfiXsIWzEcCJ8UQUE_EQiA
function facebook_count( $username ) {
    $facebook_count = file_get_contents( 'https://graph.facebook.com/v2.6/' . $username .'?fields=fan_count&access_token=1223633204329440|euvE-dfiXsIWzEcCJ8UQUE_EQiA' );
    return json_decode( $facebook_count )->fan_count;
}

// get twitter followers count
function getTwitterFollowers($screenName = 'wpbeginner')
{
    // some variables
    $consumerKey = 'lEnX52Llvi6Uzn1Ml5yyeKEtK';
    $consumerSecret = 'PG4vb8QrDf6uii6EHD8InkCEiFATTSjkvq3keZmnsTIvCiOU8L';
    $token = get_option('cfTwitterToken');
 
    // get follower count from cache
    $numberOfFollowers = get_transient('cfTwitterFollowers');
 
    // cache version does not exist or expired
    if (false === $numberOfFollowers) {
        // getting new auth bearer only if we don't have one
        if(!$token) {
            // preparing credentials
            $credentials = $consumerKey . ':' . $consumerSecret;
            $toSend = base64_encode($credentials);
 
            // http post arguments
            $args = array(
                'method' => 'POST',
                'httpversion' => '1.1',
                'blocking' => true,
                'headers' => array(
                    'Authorization' => 'Basic ' . $toSend,
                    'Content-Type' => 'application/x-www-form-urlencoded;charset=UTF-8'
                ),
                'body' => array( 'grant_type' => 'client_credentials' )
            );
 
            add_filter('https_ssl_verify', '__return_false');
            $response = wp_remote_post('https://api.twitter.com/oauth2/token', $args);
 
            $keys = json_decode(wp_remote_retrieve_body($response));
 
            if($keys) {
                // saving token to wp_options table
                update_option('cfTwitterToken', $keys->access_token);
                $token = $keys->access_token;
            }
        }
        // we have bearer token wether we obtained it from API or from options
        $args = array(
            'httpversion' => '1.1',
            'blocking' => true,
            'headers' => array(
                'Authorization' => "Bearer $token"
            )
        );
 
        add_filter('https_ssl_verify', '__return_false');
        $api_url = "https://api.twitter.com/1.1/users/show.json?screen_name=$screenName";
        $response = wp_remote_get($api_url, $args);
 
        if (!is_wp_error($response)) {
            $followers = json_decode(wp_remote_retrieve_body($response));
            $numberOfFollowers = $followers->followers_count;
        } else {
            // get old value and break
            $numberOfFollowers = get_option('cfNumberOfFollowers');
            // uncomment below to debug
            //die($response->get_error_message());
        }
 
        // cache for an hour
        set_transient('cfTwitterFollowers', $numberOfFollowers, 1*60*60);
        update_option('cfNumberOfFollowers', $numberOfFollowers);
    }
 
    return $numberOfFollowers;
}

// get google plus followers count
function googleplus_count( $user, $apikey ) {
    $google = file_get_contents( 'https://www.googleapis.com/plus/v1/people/' . $user . '?key=' . $apikey );
    return json_decode( $google )->circledByCount;
}

// get instagram followers count
// https://api.instagram.com/v1/users/self?access_token=300973134.e60c771.bd8e33d624e94ed4931e68818001206d <-- get user id first
function instagram_count($user_id) {
	$result = file_get_contents("https://api.instagram.com/v1/users/" . $user_id . "?access_token=300973134.e60c771.bd8e33d624e94ed4931e68818001206d");
	$obj = json_decode($result);
	return $obj->data->counts->followed_by;
}

// Create Events Custom Post Type
function jg_events_init() {
    $args = array(
      	'labels' => array(
      					'name' => _x( 'Events', 'events' ),
      					'singular_name' => _x( 'Event', 'event' ),
      					'add_new_item' => __( 'Add New Event' ),
      					'all_items' => __( 'All Events' ),
      					'edit_item' => __( 'Edit Event' ),
      				),
        'public' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'query_var' => true,
        // 'rewrite' => array('slug' => 'events'),
        'has_archive' => true,
        'supports' => array(
            'title',
            'editor',
            'thumbnail',)
        );
    register_post_type( 'events', $args );
 	flush_rewrite_rules( false );
}
add_action( 'init', 'jg_events_init' );

// function my_flush_rewrite_rules() {
//     flush_rewrite_rules();
// }
// add_action( 'after_switch_theme', 'my_flush_rewrite_rules' );

// Create Campaigns Custom Post Type
function jg_campaigns_init() {
    $args = array(
      	'labels' => array(
      					'name' => _x( 'Campaigns', 'campaigns' ),
      					'singular_name' => _x( 'Campaign', 'campaign' ),
      					'add_new_item' => __( 'Add New Campaign' ),
      					'all_items' => __( 'All Campaigns' ),
      					'edit_item' => __( 'Edit Campaign' ),
      				),
        'public' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'query_var' => true,
        'has_archive' => true,
        'supports' => array(
            'title',
            'editor',
            'thumbnail',)
        );
    register_post_type( 'campaigns', $args );
 	// flush_rewrite_rules( true );
}
add_action( 'init', 'jg_campaigns_init' );

// Create Media Custom Post Type
function jg_media_init() {
    $args = array(
      	'labels' => array(
      					'name' => _x( 'Media', 'media' ),
      					'singular_name' => _x( 'media', 'media' ),
      					'add_new_item' => __( 'Add New media' ),
      					'all_items' => __( 'All Media' ),
      					'edit_item' => __( 'Edit media' ),
      				),
        'public' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'query_var' => true,
        'has_archive' => true,
        'supports' => array(
            'title',
            'editor',
            'thumbnail',)
        );
    register_post_type( 'media', $args );
 	// flush_rewrite_rules( true );
}
add_action( 'init', 'jg_media_init' );

// Create Celebrities Custom Post Type
function jg_celebrities_init() {
    $args = array(
      	'labels' => array(
      					'name' => _x( 'Celebrities', 'celebrities' ),
      					'singular_name' => _x( 'Celebrity', 'celebrity' ),
      					'add_new_item' => __( 'Add New Celebrity' ),
      					'all_items' => __( 'All Celebrities' ),
      					'edit_item' => __( 'Edit Celebrity' ),
      				),
        'public' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'query_var' => true,
        'has_archive' => true,
        'supports' => array(
            'title',
            'editor',
            'thumbnail',)
        );
    register_post_type( 'celebrities', $args );
 	// flush_rewrite_rules( true );
}
add_action( 'init', 'jg_celebrities_init' );


// function custom_flush_rules(){
// 	//defines the post type so the rules can be flushed.

// 	//and flush the rules.
// 	flush_rewrite_rules();
// }
// add_action('after_theme_switch', 'custom_flush_rules');

/* Extra taxonomy for Collections */
add_action( 'init', 'custom_taxonomy_Item' , 0 );
function custom_taxonomy_Item()  {
    $labels = array(
        'name'                       => 'Collections',
        'singular_name'              => 'Collection',
        'menu_name'                  => 'Collections',
        'all_items'                  => 'All Collections',
        'parent_item'                => 'Parent Collection',
        'parent_item_colon'          => 'Parent Collection:',
        'new_item_name'              => 'New Collection Name',
        'add_new_item'               => 'Add New Collection',
        'edit_item'                  => 'Edit Collection',
        'update_item'                => 'Update Collection',
        'separate_items_with_commas' => 'Separate Collection with commas',
        'search_items'               => 'Search Collections',
        'add_or_remove_items'        => 'Add or remove Collections',
        'choose_from_most_used'      => 'Choose from the most used Collections',
    );
    $args = array(
        'labels'                     => $labels,
        'hierarchical'               => true,
        'public'                     => true,
        'show_ui'                    => true,
        'show_admin_column'          => true,
        'show_in_nav_menus'          => true,
        'show_tagcloud'              => false,
        'rewrite'           => array( 'slug' => 'collection' , 'with_front' => true ),
    );


    register_taxonomy( 'collection',
            apply_filters( 'woocommerce_taxonomy_objects_product_cat', array( 'product' ) ),
            apply_filters( 'woocommerce_taxonomy_args_product_cat', $args) 
        );
    register_taxonomy_for_object_type( 'collection', 'product' );
}

// Extra sorting options for products
function custom_woocommerce_get_catalog_ordering_args( $args ) {
    global $wp_query;
    if (isset($_GET['orderby'])) {
        switch ($_GET['orderby']) :
            case 'name' :
                $args['order'] = 'ASC';
                $args['orderby'] = 'title';
                break;
            case 'name-desc' :
                $args['order'] = 'DESC';
                $args['orderby'] = 'title';
                break;
        endswitch;
    }
    return $args;
}
add_filter('woocommerce_get_catalog_ordering_args', 'custom_woocommerce_get_catalog_ordering_args');

// Filter products by category
function custom_pre_get_posts_query( $q ) {

    if ( ! $q->is_main_query() ) return;

    $query = array();
    
    if (isset($_GET['filterby']) && ! is_admin()) {
        $query[] = array(
            'taxonomy' => 'product_cat',
            'field' => 'slug',
            'terms' => array( $_GET['filterby'] ),
            'operator' => 'IN'
        ); 
        
    }
    
    // if (isset($_GET['color']) && ! is_admin()) {
    //     $query[] = array(
    //         'taxonomy' => 'pa_color',
    //         'field' => 'slug',
    //         'terms' => array( $_GET['color'] ),
    //         'operator' => 'IN'
    //     );
    // }
    if(!empty($query))
        $q->set( 'tax_query', $query );

    remove_action( 'pre_get_posts', 'custom_pre_get_posts_query' );

}
add_action( 'pre_get_posts', 'custom_pre_get_posts_query' );

// Hook in
add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );
// Our hooked in function - $fields is passed via the filter!
function custom_override_checkout_fields( $fields ) {
 	unset($fields['billing']['billing_company']);
 	unset($fields['billing']['billing_address_2']);
 	unset($fields['billing']['billing_state']);
 	// unset($fields['billing']['billing_email']);
 	unset($fields['billing']['billing_city']);
 	unset($fields['billing']['billing_postcode']);

 	$fields['billing']['billing_address_1']['placeholder'] = '';

 	return $fields;
}

add_filter('woocommerce_checkout_fields', 'add_custom_class_checkout_fields' );
function add_custom_class_checkout_fields($fields) {
    foreach ($fields as &$fieldset) {
        foreach ($fieldset as &$field) {
            // if you want to add the form-group class around the label and the input
            $field['class'][] = 'checkout-field'; 

            // add form-control to the actual input
            // $field['input_class'][] = 'form-control';
        }
    }
    return $fields;
}

// change Add to Cart button text
add_filter( 'woocommerce_product_single_add_to_cart_text', 'woo_custom_cart_button_text' );    // 2.1 +
function woo_custom_cart_button_text() {
 
        return __( 'Buy Now', 'woocommerce' );
 
}

// ajax add to wishlist
function update_wishlist_count(){
    if( function_exists( 'YITH_WCWL' ) ){
        wp_send_json( YITH_WCWL()->count_products() );
    }
}
add_action( 'wp_ajax_update_wishlist_count', 'update_wishlist_count' );
add_action( 'wp_ajax_nopriv_update_wishlist_count', 'update_wishlist_count' );

// function enqueue_custom_wishlist_js(){
// 	wp_enqueue_script( 'yith-wcwl-custom-js', get_stylesheet_directory_uri() . '/yith-wcwl-custom.js', array( 'jquery' ), false, true );
// }
// add_action( 'wp_enqueue_scripts', 'enqueue_custom_wishlist_js' );

// ajax login
function ajax_login_init(){

    wp_register_script('ajax-login-script', get_template_directory_uri() . '/assets/js/ajax-login-script.js', array('jquery') ); 
    wp_enqueue_script('ajax-login-script');

    wp_localize_script( 'ajax-login-script', 'ajax_login_object', array( 
        'ajaxurl' => admin_url( 'admin-ajax.php' ),
        'redirecturl' => home_url(),
        'loadingmessage' => __('Sending user info, please wait...')
    ));

    // Enable the user with no privileges to run ajax_login() in AJAX
    add_action( 'wp_ajax_nopriv_ajaxlogin', 'ajax_login' );
}

// Execute the action only if the user isn't logged in
if (!is_user_logged_in()) {
    add_action('init', 'ajax_login_init');
}

function ajax_login(){

    // First check the nonce, if it fails the function will break
    // check_ajax_referer( 'ajax-login-nonce', 'security' );

    // Nonce is checked, get the POST data and sign user on
    $info = array();
    $info['user_login'] = $_POST['username'];
    $info['user_password'] = $_POST['password'];
    $info['remember'] = true;

    $user_signon = wp_signon( $info, false );
    if ( is_wp_error($user_signon) ){
        echo json_encode(array('loggedin'=>false, 'message'=>__('Wrong username or password.')));
    } else {
    	// $user = get_user_by('login', $info['user_login']);
    	// $userdata = get_userdata( $user->ID );
    	$user_address = get_user_meta( $user_signon->ID, 'billing_address_1', true );
    	$user_phone = get_user_meta( $user_signon->ID, 'billing_phone', true );
    	$user_first = get_user_meta( $user_signon->ID, 'billing_first_name', true );
    	$user_last = get_user_meta( $user_signon->ID, 'billing_last_name', true );
    	$user_email = get_user_meta( $user_signon->ID, 'billing_email', true );
        echo json_encode(array('loggedin'=>true, 'message'=>__('Login successful, redirecting...'), 'billing_address'=>$user_address, 'user_phone'=>$user_phone, 'user_first'=>$user_first, 'user_last'=>$user_last, 'user_email'=>$user_email ));
    }

    die();
}

// change post object order
function my_post_object_query( $args, $field, $post_id ) {
	
    // only show children of the current post being edited
    $args['order'] = 'DESC';
    $args['orderby'] = 'post_date';
	
	// return
    return $args;
    
}

// filter for every field
add_filter('acf/fields/post_object/query', 'my_post_object_query', 10, 3);

// create store custom post
function jg_stores_init() {
    $args = array(
      'label' => 'Stores',
        'public' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'query_var' => true,
        'has_archive' => true,
        'supports' => array(
            'title',
            'editor')
        );
    register_post_type( 'store', $args );

    $args = array(
        'label'                      => 'Country &amp; State',
        'hierarchical'               => true,
        'public'                     => true,
        'show_ui'                    => true,
        'show_admin_column'          => true,
        'show_in_nav_menus'          => true,
        'show_tagcloud'              => true,
        'query_var'                  => true, 
    );
    register_taxonomy( 'country-state' , 'store' , $args );
}
add_action( 'init', 'jg_stores_init' );


// store location meta box
add_filter( 'rwmb_meta_boxes', 'mr_meta_fields' );
function mr_meta_fields( $meta_boxes )
{

    $meta_boxes[] = array(
        'title'  => __( 'Store Location' ),
        'post_types' => array( 'store' ),
        'fields' => array(
            array(
                'id'   => 'address',
                'name' => __( 'Address to search on map' ),
                'type' => 'text',
            ),
            array(
                'id'            => 'location',
                'name'          => __( 'Map' ),
                'type'          => 'map',

                // Default location: 'latitude,longitude[,zoom]' (zoom is optional)
                'std'           => '-6.233406,-35.049906,15',

                // Name of text field where address is entered. Can be list of text fields, separated by commas (for ex. city, state)
                'address_field' => 'address',
            ),
        ),
    );


    return $meta_boxes;
}

/* AJAX Store Search */
add_action( 'wp_ajax_store_search', 'store_search' );
add_action( 'wp_ajax_nopriv_store_search', 'store_search' );
function store_search()
{
    global $wpdb;
    $query = "SELECT distinct jaipurgems_posts.*
                FROM jaipurgems_posts, jaipurgems_term_relationships, jaipurgems_term_taxonomy, jaipurgems_terms
                WHERE (jaipurgems_terms.name LIKE '%".$_POST["s"]."%'
                OR jaipurgems_posts.post_title LIKE '%".$_POST["s"]."%')
                AND jaipurgems_posts.post_status = 'publish'
                AND jaipurgems_posts.post_type = 'store'
                AND jaipurgems_posts.ID = jaipurgems_term_relationships.object_id
                AND jaipurgems_term_relationships.term_taxonomy_id = jaipurgems_term_taxonomy.term_taxonomy_id
                AND jaipurgems_term_taxonomy.term_id = jaipurgems_terms.term_id";

    $stores = $wpdb->get_results($query);

    $stores_array =  array();
    if($stores){
        foreach ($stores as $s) {
            if($location = rwmb_meta('location' , array(), $s->ID)){
                $store = array();
                // $location = explode(',', $location);
                $location = get_post_meta( $s->ID, 'location', false );
                $location = substr($location[0], 0, strrpos($location[0], ","));
                $location = explode(',', $location);
                $content = str_replace(array("\r\n", "\n", "\r"), '<br/>', $s->post_content);
                $content1 = strip_tags(get_the_term_list( $s->ID, 'country-state', '', ',', '' ));
                $content2  =  htmlentities($content);
                $store[0] = $s->post_title;
                $store[1] = $location[0];
                $store[2] = $location[1];
                $store[3] = $content1;
                $store[4] = $content2;
                $stores_array[] = $store;
            }
            
        }
    }
    echo json_encode($stores_array);
    wp_die();
}

// Get client IP
function get_client_ip() {
    $ipaddress = '';
    if (isset($_SERVER['HTTP_CLIENT_IP']))
        $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
    else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_X_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
    else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_FORWARDED'];
    else if(isset($_SERVER['REMOTE_ADDR']))
        $ipaddress = $_SERVER['REMOTE_ADDR'];
    return $ipaddress;
}

add_action( 'init', 'setting_my_first_cookie' );
function setting_my_first_cookie() {
  	setcookie('selected_country', 'empty');
}

function edit_cookie($val) {
  	setcookie('selected_country', $val);
}













