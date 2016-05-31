<?php
/**
 * Single Product Price, including microdata for SEO
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/price.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see     http://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.4.9
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $product;

?>
<div itemprop="offers" class="offers" itemscope itemtype="http://schema.org/Offer">

	<p class="price"><?php echo $product->get_price_html(); ?></p>

	<meta itemprop="price" content="<?php echo esc_attr( $product->get_price() ); ?>" />
	<meta itemprop="priceCurrency" content="<?php echo esc_attr( get_woocommerce_currency() ); ?>" />
	<link itemprop="availability" href="http://schema.org/<?php echo $product->is_in_stock() ? 'InStock' : 'OutOfStock'; ?>" />

	<span class="ref">Ref: <?php the_ID(); ?></span>

</div>

<?php if(get_the_content()) : ?>
	<div class="description">
		<?php the_content(); ?>
	</div>
<?php endif; ?>

<?php if(get_field('white_gold') || get_field('diamonds') || get_field('rose_gold')) : ?>
	<div class="specs">
		<div class="white-gold">
			<?php the_field('white_gold'); ?>K
			<span>White Gold</span>
		</div>
		<div class="diamond">
			<?php the_field('diamonds'); ?>CT
			<span>Diamonds</span>
		</div>
		<div class="rose-gold">
			<?php the_field('rose_gold'); ?>K
			<span>Rose Gold</span>
		</div>
	</div>
<?php endif; ?>











