<?php
/**
 * Single Product Share
 *
 * Sharing plugins can hook into here or you can add your own code directly.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/share.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

?>

<ul>
	<!-- <li><a href="#"><span>+</span> Add to my jewellery box</a></li> -->
	<li><?php echo do_shortcode('[yith_wcwl_add_to_wishlist]'); ?></li>
	<li><a href="<?php the_permalink(); ?>">Contact us</a></li>
</ul>

<?php do_action( 'woocommerce_share' ); // Sharing plugins can hook into here ?>
