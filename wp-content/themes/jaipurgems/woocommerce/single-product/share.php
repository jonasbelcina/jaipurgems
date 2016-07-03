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
	<li><i class="fa fa-home" aria-hidden="true" style="color: #a38d60; font-size: 16px;"></i>&nbsp;<a class="try-at-home" href="" data-toggle="modal" data-target="#tryAtHome" data-product="<?php the_title(); ?>">Try at Home</a></li>
</ul>

<?php do_action( 'woocommerce_share' ); // Sharing plugins can hook into here ?>

<?php
$goldwt_terms = get_the_terms( $post->ID, 'pa_gold-weight-in-grams' );
$price_single_terms = get_the_terms( $post->ID, 'pa_price-for-single-bangle' );
$di_pcs = get_the_terms( $post->ID, 'pa_di-pcs' );
$di_wt_carats = get_the_terms( $post->ID, 'pa_di-weight-in-carats' );
$polki_di_wt_carats = get_the_terms( $post->ID, 'pa_polki-di-weight-in-carats' );
$color_stone_pcs = get_the_terms( $post->ID, 'pa_colour-stone-pcs' );
$col_st_wt = get_the_terms( $post->ID, 'pa_col-st-weight-in-carats' );
$rose_cut_dia = get_the_terms( $post->ID, 'pa_rose-cut-dia-pcs' );
$rose_cut_dia_wt = get_the_terms( $post->ID, 'pa_rose-cut-dia-wt' );

if($goldwt_terms && $price_single_terms && $di_pcs && $di_wt_carats && $rose_cut_dia_wt && $polki_di_wt_carats && $color_stone_pcs && $col_st_wt && $rose_cut_dia) {
?>
	<div class="panel-group" id="details_accordion" role="tablist" aria-multiselectable="true">
		<div class="panel panel-default">
			<div class="panel-heading" role="tab" id="headingOne">
				<h4 class="panel-title">
					<a role="button" data-toggle="collapse" data-parent="#details_accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						Details
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
				<div class="panel-body">
					<ul>
					<?php

						if ( $goldwt_terms && ! is_wp_error( $goldwt_terms ) ) : 
							foreach ( $goldwt_terms as $term ) {
								echo '<li><span>Gold weight in grams: </span>' . $term->name . '</li>';
							}
						endif;


						if ( $price_single_terms && ! is_wp_error( $price_single_terms ) ) : 
							foreach ( $price_single_terms as $term ) {
								echo '<li><span>Price for single bangle: </span>' . $term->name . '</li>';
							}
						endif;


						if ( $di_pcs && ! is_wp_error( $di_pcs ) ) : 
							foreach ( $di_pcs as $term ) {
								echo '<li><span>Di Pcs: </span>' . $term->name . '</li>';
							}
						endif;


						if ( $di_wt_carats && ! is_wp_error( $di_wt_carats ) ) : 
							foreach ( $di_wt_carats as $term ) {
								echo '<li><span>Di Wt. in Carats: </span>' . $term->name . '</li>';
							}
						endif;


						if ( $polki_di_wt_carats && ! is_wp_error( $polki_di_wt_carats ) ) : 
							foreach ( $polki_di_wt_carats as $term ) {
								echo '<li><span>Polki Di Wt. in Carats: </span>' . $term->name . '</li>';
							}
						endif;


						if ( $color_stone_pcs && ! is_wp_error( $color_stone_pcs ) ) : 
							foreach ( $color_stone_pcs as $term ) {
								echo '<li><span>Colour Stone Pcs: </span>' . $term->name . '</li>';
							}
						endif;


						if ( $col_st_wt && ! is_wp_error( $col_st_wt ) ) : 
							foreach ( $col_st_wt as $term ) {
								echo '<li><span>Col St Wt. in Carats: </span>' . $term->name . '</li>';
							}
						endif;


						if ( $rose_cut_dia && ! is_wp_error( $rose_cut_dia ) ) : 
							foreach ( $rose_cut_dia as $term ) {
								echo '<li><span>Rose Cut Dia Pcs: </span>' . $term->name . '</li>';
							}
						endif;


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
<?php } ?>