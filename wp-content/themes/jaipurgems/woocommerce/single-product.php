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
		do_action( 'woocommerce_sidebar' );
	?>

<?php get_footer( 'shop' ); ?>
