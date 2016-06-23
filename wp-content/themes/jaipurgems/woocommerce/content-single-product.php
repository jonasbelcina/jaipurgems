<?php
/**
 * The template for displaying product content in the single-product.php template
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-single-product.php.
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

<div class="container">
	<div class="row">

	<?php
		/**
		 * woocommerce_before_single_product hook.
		 *
		 * @hooked wc_print_notices - 10
		 */
		 do_action( 'woocommerce_before_single_product' );

		 if ( post_password_required() ) {
			echo get_the_password_form();
			return;
		 }
	?>

	<div itemscope itemtype="<?php echo woocommerce_get_product_schema(); ?>" id="product-<?php the_ID(); ?>" <?php post_class(); ?>>

		<?php
			/**
			 * woocommerce_before_single_product_summary hook.
			 *
			 * @hooked woocommerce_show_product_sale_flash - 10
			 * @hooked woocommerce_show_product_images - 20
			 */
			do_action( 'woocommerce_before_single_product_summary' );
		?>

		<div class="summary entry-summary">

			<div class="desktop-single">
			<?php
				/**
				 * woocommerce_single_product_summary hook.
				 *
				 * @hooked woocommerce_template_single_title - 5
				 * @hooked woocommerce_template_single_rating - 10
				 * @hooked woocommerce_template_single_price - 10
				 * @hooked woocommerce_template_single_excerpt - 20
				 * @hooked woocommerce_template_single_add_to_cart - 30
				 * @hooked woocommerce_template_single_meta - 40
				 * @hooked woocommerce_template_single_sharing - 50
				 */
				do_action( 'woocommerce_single_product_summary' );
			?>
			</div>

			<div class="mobile-single">
				<div class="mobile-price"><?php woocommerce_template_single_price(); ?></div>
				<div class="mobile-cart"><?php woocommerce_template_single_add_to_cart(); ?></div>
				<div class="mobile-share"><?php woocommerce_template_single_sharing(); ?></div>
			</div>

		</div><!-- .summary -->

		<div class="clearfix"></div>

		<?php
			/**
			 * woocommerce_after_single_product_summary hook.
			 *
			 * @hooked woocommerce_output_product_data_tabs - 10
			 * @hooked woocommerce_upsell_display - 15
			 * @hooked woocommerce_output_related_products - 20
			 */
			do_action( 'woocommerce_after_single_product_summary' );
		?>

		<meta itemprop="url" content="<?php the_permalink(); ?>" />

	</div><!-- #product-<?php the_ID(); ?> -->

	<?php do_action( 'woocommerce_after_single_product' ); ?>

	</div>
</div>


<!-- Size Chart Modal -->
<div class="modal fade" id="sizeChart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Size Chart</h4>
			</div>
			<div class="modal-body">
				<table class="data-table" style="border-collapse: collapse; float: left;" border="1" cellspacing="0" cellpadding="5">
					<thead>
						<tr bgcolor="#f9f9f9"><th>Bangle Size (Indian)</th><th colspan="2">Diameter</th></tr>
						<tr><th>&nbsp;</th><th>Inches</th><th>MM</th></tr>
					</thead>
					<tbody>
						<tr bgcolor="#f9f9f9">
							<td>2-2</td>
							<td>2.125</td>
							<td>54</td>
						</tr>
						<tr>
							<td>2-4</td>
							<td>2.25</td>
							<td>57.2</td>
						</tr>
						<tr bgcolor="#f9f9f9">
							<td>2-6</td>
							<td>2.375</td>
							<td>60.3</td>
						</tr>
						<tr>
							<td>2-8</td>
							<td>2.5</td>
							<td>63.5</td>
						</tr>
						<tr bgcolor="#f9f9f9">
							<td>2-10</td>
							<td>2.625</td>
							<td>66.7</td>
						</tr>
						<tr>
							<td>2-12</td>
							<td>2.75</td>
							<td>69.9</td>
						</tr>
						<tr bgcolor="#f9f9f9">
							<td>2-14</td>
							<td>2.875</td>
							<td>73</td>
						</tr>
						<tr>
							<td>3</td>
							<td>3</td>
							<td>76.3</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>




