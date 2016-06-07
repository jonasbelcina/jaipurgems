<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

get_header( 'shop' );

global $wp_query;
$cat = $wp_query->get_queried_object();
// var_dump($cat);
$parent = $cat->parent == 0 ? $cat->term_id : $cat->parent;
 ?>

	<nav class="shop-nav">
		<div class="container">
			<ul>
				<?php
					$categories = get_categories(array(
									'taxonomy' 		=> 'product_cat',
									'parent' 		=> $parent,
									'hide_empty' 	=> false
								));
					foreach ($categories as $category) { ?>
						<li><a href="<?php echo get_term_link($category); ?>"><?php echo $category->name; ?></a></li>
					<?php }
				?>
			</ul>
		</div>
	</nav>

	<?php $banner_img = get_field('banner_image', 'product_cat_' . $cat->term_id); ?>

	<section class="shop-banner" style="background-image: url(<?php echo $banner_img['url']; ?>);">
		<div class="content">
			<?php
				$heading = get_field('heading', 'product_cat_' . $cat->term_id);
				if(!$heading) {
					$heading = woocommerce_page_title();
				}
			?>
			<h1><?php echo $heading; ?></h1>
			<?php if(get_field('subheading', 'product_cat_' . $cat->term_id)) : ?>
				<h2><?php the_field('subheading', 'product_cat_' . $cat->term_id); ?></h2>
			<?php endif; ?>
		</div>
	</section>

	<section class="shop-filter">
		<div class="container">
			<div class="row">
				<?php do_action( 'woocommerce_before_shop_loop' ); ?>
			</div>
		</div>
	</section>

	<?php
		/**
		 * woocommerce_before_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
		 * @hooked woocommerce_breadcrumb - 20
		 */
		// do_action( 'woocommerce_before_main_content' );
	?>

		<?php
			/**
			 * woocommerce_archive_description hook.
			 *
			 * @hooked woocommerce_taxonomy_archive_description - 10
			 * @hooked woocommerce_product_archive_description - 10
			 */
			// do_action( 'woocommerce_archive_description' );
		?>

		<?php if ( have_posts() ) : ?>

			<?php
				/**
				 * woocommerce_before_shop_loop hook.
				 *
				 * @hooked woocommerce_result_count - 20
				 * @hooked woocommerce_catalog_ordering - 30
				 */
				// do_action( 'woocommerce_before_shop_loop' );
			?>

			<?php woocommerce_product_loop_start(); ?>

				<?php woocommerce_product_subcategories(); ?>

				<?php while ( have_posts() ) : the_post(); ?>

					<?php wc_get_template_part( 'content', 'product' ); ?>

				<?php endwhile; // end of the loop. ?>

			<?php woocommerce_product_loop_end(); ?>

			<?php
				/**
				 * woocommerce_after_shop_loop hook.
				 *
				 * @hooked woocommerce_pagination - 10
				 */
				do_action( 'woocommerce_after_shop_loop' );
			?>

		<?php elseif ( ! woocommerce_product_subcategories( array( 'before' => woocommerce_product_loop_start( false ), 'after' => woocommerce_product_loop_end( false ) ) ) ) : ?>

			<?php wc_get_template( 'loop/no-products-found.php' ); ?>

		<?php endif; ?>

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

<?php get_footer( 'shop' ); ?>
