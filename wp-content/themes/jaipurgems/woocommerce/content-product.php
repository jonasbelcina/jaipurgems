<?php
/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see     http://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.5.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $product, $woocommerce_loop;

// Store loop count we're currently on
if ( empty( $woocommerce_loop['loop'] ) ) {
	$woocommerce_loop['loop'] = 0;
}

// Store column count for displaying the grid
if ( empty( $woocommerce_loop['columns'] ) ) {
	$woocommerce_loop['columns'] = apply_filters( 'loop_shop_columns', 4 );
}

// Ensure visibility
if ( ! $product || ! $product->is_visible() ) {
	return;
}

// Increase loop count
$woocommerce_loop['loop']++;

// Extra post classes
$classes = array();
if ( 0 === ( $woocommerce_loop['loop'] - 1 ) % $woocommerce_loop['columns'] || 1 === $woocommerce_loop['columns'] ) {
	$classes[] = 'first';
}
if ( 0 === $woocommerce_loop['loop'] % $woocommerce_loop['columns'] ) {
	$classes[] = 'last';
}
?>

<?php
	if(!is_product() && ($woocommerce_loop['loop'] % 5 == 1 || $woocommerce_loop['loop'] % 5 == 4)) { ?>
		<div class="row">
	<?php }
?>

<div class="product-col <?php if(is_product()) { ?>single-prod-col col-md-3 col-sm-6<?php } else { if($woocommerce_loop['loop'] % 5 == 4 || $woocommerce_loop['loop'] % 5 == 0) { ?>col-md-6 col-sm-6<?php } elseif($woocommerce_loop['loop'] % 5 <= 3) { ?>col-md-4 col-sm-4<?php } } ?>">
	<div class="row">
		<div class="product">

			<?php
			/**
			 * woocommerce_before_shop_loop_item hook.
			 *
			 * @hooked woocommerce_template_loop_product_link_open - 10
			 */
			do_action( 'woocommerce_before_shop_loop_item' );

			/**
			 * woocommerce_before_shop_loop_item_title hook.
			 *
			 * @hooked woocommerce_show_product_loop_sale_flash - 10
			 * @hooked woocommerce_template_loop_product_thumbnail - 10
			 */
			do_action( 'woocommerce_before_shop_loop_item_title' );
				if($woocommerce_loop['loop'] % 5 == 4 || $woocommerce_loop['loop'] % 5 == 0) {
					the_post_thumbnail( 'full' );
				}
			?>

			<div class="details">
				<div class="content">
				<?php
				/**
				 * woocommerce_shop_loop_item_title hook.
				 *
				 * @hooked woocommerce_template_loop_product_title - 10
				 */
				do_action( 'woocommerce_shop_loop_item_title' );

				/**
				 * woocommerce_after_shop_loop_item_title hook.
				 *
				 * @hooked woocommerce_template_loop_rating - 5
				 * @hooked woocommerce_template_loop_price - 10
				 */
				do_action( 'woocommerce_after_shop_loop_item_title' );
				?>

					<div class="content-bottom">
					<?php
					/**
					 * woocommerce_after_shop_loop_item hook.
					 *
					 * @hooked woocommerce_template_loop_product_link_close - 5
					 * @hooked woocommerce_template_loop_add_to_cart - 10
					 */
					do_action( 'woocommerce_after_shop_loop_item' );
					?>
					</div>
				</div>
			</div>

			<div class="mobile-details">
				<?php echo woocommerce_template_loop_price(); ?>
				<ul>
					<li><?php echo do_shortcode('[yith_wcwl_add_to_wishlist]'); ?></li>
					<li><a href="" data-toggle="modal" data-target="#tryAtHome" data-product="<?php the_title(); ?>"><span>Try at Home</span></a></li>
				</ul>
			</div>

		</div>
	</div>
</div>

<?php
	if(!is_product() && ($woocommerce_loop['loop'] % 5 == 3 || $woocommerce_loop['loop'] % 5 == 0)) { ?>
		</div>
	<?php }
?>
