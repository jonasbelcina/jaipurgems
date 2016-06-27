<?php
/**
 * The Template for displaying all single products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product.php.
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

get_header( 'shop' ); 

global $post;
$terms = get_the_terms( $post->ID, 'product_cat' );
// var_dump($terms);
?>

<div class="product-nav">
	<div class="container">
		<?php
			$top_cat_id = get_top_parent_cat($terms[0]->term_id);
			$top_cat_name = get_term_by('id', $top_cat_id, 'product_cat');
		?>
		<a href="<?php echo get_term_link($top_cat_id); ?>">Browse <?php echo $top_cat_name->name; ?></a>

		<?php
			$previous = get_previous_post();
			$next = get_next_post();
		?>
		<ul>
			<?php if($previous) : ?>
				<li class="prev"><a href="<?php echo $previous->guid; ?>">Previous</a></li>
			<?php endif; ?>
			
			<?php if($next) : ?>
				<li class="next"><a href="<?php echo $next->guid; ?>">Next</a></li>
			<?php endif; ?>
		</ul>
	</div>
</div>

	<?php
		/**
		 * woocommerce_before_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
		 * @hooked woocommerce_breadcrumb - 20
		 */
		// do_action( 'woocommerce_before_main_content' );
	?>

		<?php while ( have_posts() ) : the_post(); ?>

			<?php wc_get_template_part( 'content', 'single-product' ); ?>

		<?php endwhile; // end of the loop. ?>

	<?php
		/**
		 * woocommerce_after_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper_end - 10 (outputs closing divs for the content)
		 */
		// do_action( 'woocommerce_after_main_content' );
	?>

	<?php
		/**
		 * woocommerce_sidebar hook.
		 *
		 * @hooked woocommerce_get_sidebar - 10
		 */
		// do_action( 'woocommerce_sidebar' );
	?>

	<!-- Try at Home Modal -->
	<div class="modal fade" id="tryAtHome" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Try at Home</h4>
				</div>
				<div class="modal-body">
					<p>Try Before You Buy in 3 Simple Steps</p>
					<div class="try-cols">
						<div class="col-xs-4">
							<div class="try-img try-img-1"></div>
							<p>Pick your jewel</p>
						</div>
						<div class="col-xs-4">
							<div class="try-img try-img-2"></div>
							<p>Try on for free</p>
						</div>
						<div class="col-xs-4">
							<div class="try-img try-img-3"></div>
							<p>Buy if you like</p>
						</div>
					</div>
					<?php echo do_shortcode('[contact-form-7 id="293" title="Try at Home"]'); ?>
				</div>
			</div>
		</div>
	</div>

	<!-- Product Contact Modal -->
	<!-- <div class="modal fade" id="productContact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Contact Us</h4>
				</div>
				<div class="modal-body">
					<?php echo do_shortcode('[contact-form-7 id="626" title="Product Contact"]'); ?>
				</div>
			</div>
		</div>
	</div> -->

<?php get_footer( 'shop' ); ?>
