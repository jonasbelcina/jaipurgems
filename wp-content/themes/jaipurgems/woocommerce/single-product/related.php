<?php
/**
 * Related Products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/related.php.
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

global $product, $woocommerce_loop;

if ( empty( $product ) || ! $product->exists() ) {
	return;
}

$related = $product->get_related( $posts_per_page );

if ( sizeof( $related ) === 0 ) return;

$args = apply_filters( 'woocommerce_related_products_args', array(
	'post_type'            => 'product',
	'ignore_sticky_posts'  => 1,
	'no_found_rows'        => 1,
	'posts_per_page'       => 8,
	'orderby'              => $orderby,
	'post__in'             => $related,
	'post__not_in'         => array( $product->id )
) );

$products = new WP_Query( $args );

$woocommerce_loop['columns'] = $columns;
?>

<div class="other-products">

	<!-- Nav tabs -->
	<ul class="nav nav-tabs" role="tablist">
		<li role="presentation" class="active"><a href="#related" aria-controls="related" role="tab" data-toggle="tab">Related Products</a></li>
		<li role="presentation"><a href="#additional" aria-controls="additional" role="tab" data-toggle="tab" class="additional">Additional Items</a></li>
	</ul>

	<!-- Tab panes -->
  	<div class="tab-content">
    	<div role="tabpanel" class="tab-pane active" id="related">
			<?php if ( $products->have_posts() ) : ?>

				<div class="related products col-md-12">
					<div class="row">

						<!-- <h2><?php _e( 'Related Products', 'woocommerce' ); ?></h2> -->

						<?php woocommerce_product_loop_start(); ?>

							<?php while ( $products->have_posts() ) : $products->the_post(); ?>

								<?php wc_get_template_part( 'content', 'product' ); ?>

							<?php endwhile; // end of the loop. ?>

						<?php woocommerce_product_loop_end(); ?>
					</div>
				</div>

			<?php endif;

			wp_reset_postdata(); ?>
    	</div>

	    <div role="tabpanel" class="tab-pane" id="additional">
    		<div class="additional-items col-md-12">
    			<div class="row">
    				<!-- <h2>Additional Items</h2> -->
    				<?php
    					$terms = get_the_terms( $post->ID, 'product_cat' );
    					// var_dump($terms);
    					// $cat = get_category($terms[0]->term_id);
    					$adtl_args = array(
    								'post_type'			=> 'product',
    								'post__not_in'		=> $related,
    								'orderby'			=> 'rand',
    								'posts_per_page' 	=> 8,
    								'tax_query'			=> array(
    															array(
    																'taxonomy'	=> 'product_cat',
    																'field'		=> 'term_id',
    																'terms'		=> $terms[0]->term_id,
    																'operator' 	=> 'NOT IN'
    															)
    													),
    							);

    					$query = new WP_Query($adtl_args);

    					if($query->have_posts()) :
    						woocommerce_product_loop_start();

    						while ( $query->have_posts() ) : $query->the_post();
    							wc_get_template_part( 'content', 'product' );
    						endwhile;

    						woocommerce_product_loop_end();
    					endif;

    					wp_reset_postdata();
    				?>
    			</div>
    		</div>
	    </div>
  	</div>

</div>
