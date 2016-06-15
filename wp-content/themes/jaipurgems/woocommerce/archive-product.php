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
if(!is_search()) {
	$parent = $cat->parent == 0 ? $cat->term_id : $cat->parent;
}
 ?>

 	<?php if(!is_search()) : ?>
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

		<?php if(is_tax('collection')) : ?>
			<div class="container collection-header">
				<h1><?php echo $cat->name; ?></h1>
			</div>
		<?php endif; ?>

		<?php 
			$banner_img = (is_tax('collection') == true) ? get_field( 'collection_image' , 'collection_' . $cat->term_id ) : get_field('banner_image', 'product_cat_' . $cat->term_id);
		?>

		<section class="shop-banner <?php if(is_tax('collection')) { echo 'collection-banner'; } ?>" style="background-image: url(<?php echo $banner_img['url']; ?>);">
			<div class="content">
				<?php if(is_tax('collection')) : ?>
					<div class="container">
						<h3><?php the_field('collection_tagline', 'collection_' . $cat->term_id); ?></h3>
					</div>
				<?php else : ?>
					<?php
						$heading = get_field('heading', 'product_cat_' . $cat->term_id);
						// if(!$heading) {
						// 	$heading = woocommerce_page_title();
						// }
					?>
					<?php if(get_field('heading', 'product_cat_' . $cat->term_id)) :
						echo '<h1>' . $heading . '</h1>';
					endif; ?>
					<?php if(get_field('subheading', 'product_cat_' . $cat->term_id)) : ?>
						<h2><?php the_field('subheading', 'product_cat_' . $cat->term_id); ?></h2>
					<?php endif; ?>
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

	<?php else : ?>
		<div class="container prod-search">
			<p>Search results for:</p>
    		<form method="get" action="<?php echo home_url();?>" style="">
		  		<input type="text" name="s" placeholder="Search" value="<?php echo $_GET['s']; ?>" />
		  		<input type="hidden" name="post_type" value="product">
		  		<button type="submit"></button>
    		</form>
		</div>
	<?php endif; ?>

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
