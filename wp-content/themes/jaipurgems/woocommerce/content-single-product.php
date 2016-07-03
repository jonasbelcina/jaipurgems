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

global $product;

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

			<div class="mobile-single-details">
				<h4><?php the_title(); ?></h4>
				<span class="ref mobile-ref">Ref: <?php echo $product->sku; ?></span>
				<?php woocommerce_template_single_excerpt(); ?>

				<?php if(get_field('white_gold') || get_field('diamonds') || get_field('gem')) : ?>
					<div class="mobile-specs specs">
						<?php if(get_field('white_gold')) { ?>
							<div class="white-gold">
								<?php the_field('white_gold'); ?>K
								<span>Gold</span>
							</div>
						<?php } ?>

						<?php if(get_field('diamonds')) { ?>
							<div class="diamond">
								<?php the_field('diamonds'); ?>CT
								<span>Diamonds</span>
							</div>
						<?php } ?>

						<?php if(get_field('gem')) { ?>
							<div class="rose-gold">
								<?php the_field('gem'); ?> 
								<span>Gem</span>
							</div>
						<?php } ?>
					</div>
				<?php endif; ?>
			</div>

			<div class="panel-group" id="mobile_details_accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#mobile_details_accordion" href="#collapseOneMobile" aria-expanded="true" aria-controls="collapseOneMobile">
								Details
							</a>
						</h4>
					</div>
					<div id="collapseOneMobile" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<ul>
							<?php
								$goldwt_terms = get_the_terms( $post->ID, 'pa_gold-weight-in-grams' );
								if ( $goldwt_terms && ! is_wp_error( $goldwt_terms ) ) : 
									foreach ( $goldwt_terms as $term ) {
										echo '<li><span>Gold weight in grams: </span>' . $term->name . '</li>';
									}
								endif;

								$price_single_terms = get_the_terms( $post->ID, 'pa_price-for-single-bangle' );
								if ( $price_single_terms && ! is_wp_error( $price_single_terms ) ) : 
									foreach ( $price_single_terms as $term ) {
										echo '<li><span>Price for single bangle: </span>' . $term->name . '</li>';
									}
								endif;

								$di_pcs = get_the_terms( $post->ID, 'pa_di-pcs' );
								if ( $di_pcs && ! is_wp_error( $di_pcs ) ) : 
									foreach ( $di_pcs as $term ) {
										echo '<li><span>Di Pcs: </span>' . $term->name . '</li>';
									}
								endif;

								$di_wt_carats = get_the_terms( $post->ID, 'pa_di-weight-in-carats' );
								if ( $di_wt_carats && ! is_wp_error( $di_wt_carats ) ) : 
									foreach ( $di_wt_carats as $term ) {
										echo '<li><span>Di Wt. in Carats: </span>' . $term->name . '</li>';
									}
								endif;

								$polki_di_wt_carats = get_the_terms( $post->ID, 'pa_polki-di-weight-in-carats' );
								if ( $polki_di_wt_carats && ! is_wp_error( $polki_di_wt_carats ) ) : 
									foreach ( $polki_di_wt_carats as $term ) {
										echo '<li><span>Polki Di Wt. in Carats: </span>' . $term->name . '</li>';
									}
								endif;

								$color_stone_pcs = get_the_terms( $post->ID, 'pa_colour-stone-pcs' );
								if ( $color_stone_pcs && ! is_wp_error( $color_stone_pcs ) ) : 
									foreach ( $color_stone_pcs as $term ) {
										echo '<li><span>Colour Stone Pcs: </span>' . $term->name . '</li>';
									}
								endif;

								$col_st_wt = get_the_terms( $post->ID, 'pa_col-st-weight-in-carats' );
								if ( $col_st_wt && ! is_wp_error( $col_st_wt ) ) : 
									foreach ( $col_st_wt as $term ) {
										echo '<li><span>Col St Wt. in Carats: </span>' . $term->name . '</li>';
									}
								endif;

								$rose_cut_dia = get_the_terms( $post->ID, 'pa_rose-cut-dia-pcs' );
								if ( $rose_cut_dia && ! is_wp_error( $rose_cut_dia ) ) : 
									foreach ( $rose_cut_dia as $term ) {
										echo '<li><span>Rose Cut Dia Pcs: </span>' . $term->name . '</li>';
									}
								endif;

								$rose_cut_dia_wt = get_the_terms( $post->ID, 'pa_rose-cut-dia-wt' );
								if ( $rose_cut_dia_wt && ! is_wp_error( $rose_cut_dia_wt ) ) : 
									foreach ( $rose_cut_dia_wt as $term ) {
										echo '<li><span>Rose Cut Dia Wt: </span>' . $term->name . '</li>';
									}
								endif;
							?>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="brand-promise">
				<h4>Brand Promise</h4>
				<div>
					<article>
						<div class="adv_pic">
							<span class="certIcon"></span>
						</div><!--//adv_pic-->
						
						<h3>100% Certified</h3>
					</article>
					
					<article>
						<div class="adv_pic">
							<span class="moneyIcon"></span>
						</div><!--//adv_pic-->
						
						<h3>30-Day Money Back</h3>
					</article>
					
					<article>
						<div class="adv_pic">
							<span class="lifeExchIcon"></span>
						</div><!--//adv_pic-->
						
						<h3>Lifetime Exchange</h3>
					</article>
				</div>

				<div>
					<article class="offset_left">
						<div class="adv_pic">
							<span class="shippingIcon"></span>
						</div><!--//adv_pic-->
						
						<h3>Free Insured Shipping</h3>
					</article>
					
					<article>
						<div class="adv_pic">
							<span class="payIcon"></span>
						</div><!--//adv_pic-->
						
						<h3>Pay as You Like</h3>
					</article>
				</div>
			</div>

		</div><!-- .summary -->

		<div class="clearfix"></div>

		<div class="brand-promise desktop-brand">
			<h4>Brand Promise</h4>
			<!-- <div> -->
				<article>
					<div class="adv_pic">
						<span class="certIcon"></span>
					</div><!--//adv_pic-->
					
					<h3>100% Certified</h3>
				</article>
				
				<article>
					<div class="adv_pic">
						<span class="moneyIcon"></span>
					</div><!--//adv_pic-->
					
					<h3>30-Day Money Back</h3>
				</article>
				
				<article>
					<div class="adv_pic">
						<span class="lifeExchIcon"></span>
					</div><!--//adv_pic-->
					
					<h3>Lifetime Exchange</h3>
				</article>
			<!-- </div> -->

			<!-- <div> -->
				<article class="offset_left">
					<div class="adv_pic">
						<span class="shippingIcon"></span>
					</div><!--//adv_pic-->
					
					<h3>Free Insured Shipping</h3>
				</article>
				
				<article>
					<div class="adv_pic">
						<span class="payIcon"></span>
					</div><!--//adv_pic-->
					
					<h3>Pay as You Like</h3>
				</article>
			<!-- </div> -->
		</div>

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




