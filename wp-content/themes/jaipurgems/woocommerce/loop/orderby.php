<?php
/**
 * Show options for ordering
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/orderby.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.2.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $wp_query;
$cat = $wp_query->get_queried_object();
// var_dump($cat);
$parent = $cat->parent == 0 ? $cat->term_id : $cat->parent;
if(is_tax('collection')) {
	$parent = 6;
}

if(isset($_GET['filterby']) && $_GET['filterby'] != '')
	$filterby = $_GET['filterby'];
else
	$filterby = 'all';
?>

	<a class="mobile-filter" href=""><i class="fa fa-bars" aria-hidden="true"></i> Filter Products</a>

	<ul>

		<li class="sort-fields">
			<form class="woocommerce-ordering" method="get">
			<ul>
				<li><button type="button">Sort by:</button></li>
				<?php
					$price = false; 
					if(isset($_GET['orderby']) && ($_GET['orderby'] == 'name')) {
						echo '<li><button  class="active" type="submit" name="orderby" value="name-desc" >Name</button></li>';
					} else {
						echo '<li><button type="submit" name="orderby" value="name" >Name</button></li>';
					}

					// if(isset($_GET['orderby']) && $_GET['orderby'] == 'price') {
					// 	echo '<li><button class="active" type="submit" name="orderby" value="price-desc" >Price</button></li>';
					// } else if(isset($_GET['orderby']) && $_GET['orderby'] == 'price-desc') {
					// 	echo '<li><button class="active" type="submit" name="orderby" value="price" >Price</button></li>';
					// } else {
					// 	echo '<li><button type="submit" name="orderby" value="price" >Price</button></li>';
					// }

					foreach ( $catalog_orderby_options as $id => $name ) {

						if($id == 'price' || $id == 'price-desc'){
							if(!$price){
								if(isset($_GET['orderby']) && $_GET['orderby'] ==  'price')
									echo '<li class="active"><button type="submit" name="orderby" value="price-desc" >Price</button></li>';
								else if(isset($_GET['orderby']) && $_GET['orderby'] == 'price-desc')
									echo '<li class="active"><button type="submit" name="orderby" value="price" >Price</button></li>';
								else
									echo '<li><button type="submit" name="orderby" value="price" >Price</button></li>';

								$price = true;
							}
						}
					}
				?>
			</ul>
			<?php
				// Keep query string vars intact
				foreach ( $_GET as $key => $val ) {
					if ( 'orderby' === $key || 'submit' === $key ) {
						continue;
					}
					if ( is_array( $val ) ) {
						foreach( $val as $innerVal ) {
							echo '<input type="hidden" name="' . esc_attr( $key ) . '[]" value="' . esc_attr( $innerVal ) . '" />';
						}
					} else {
						echo '<input type="hidden" name="' . esc_attr( $key ) . '" value="' . esc_attr( $val ) . '" />';
					}
				}
			?>
			</form>
		</li>

		<li>
			<form class="woocommerce-ordering" method="get" action="<?php echo home_url(); ?>/product-category/jewellery">
			<ul class="sort-categories">
				<li><button type="button">Categories:</button></li>
				<li>
					<?php if($cat->parent == 0) : ?>
						<button type="submit" value="" class="<?php echo ($filterby == 'all') ? 'active' : ''; ?>">All</button>
					<?php else : ?>
						<a href="<?php echo get_term_link($cat->parent); ?>" class="<?php echo ($filterby == 'all') ? 'active' : ''; ?>">All</a>
					<?php endif; ?>
				</li>
				<?php
					$categories = get_categories(array(
									'taxonomy' 		=> 'product_cat',
									'parent' 		=> $parent,
									'hide_empty' 	=> false
								));
					foreach ($categories as $category) { ?>
						<?php if($cat->parent == 0) : ?>
							<li><button type="submit" name="filterby" value="<?php echo $category->slug; ?>" class="<?php echo ($filterby == $category->slug) ? 'active' : ''; ?>"><?php echo $category->name; ?></button></li>
						<?php else : ?>
							<li><a href ="<?php echo get_term_link($cat->parent); ?>?filterby=<?php echo $category->slug; ?>" class="<?php echo ($category->term_id == $cat->term_id) ? 'active' : ''; ?>"><?php echo $category->name; ?></a></li>
						<?php endif; ?>
					<?php }
				?>
			<?php //foreach ( $catalog_orderby_options as $id => $name ) : ?>
				<!-- <li><button type="submit" name="orderby" value="<?php echo esc_attr( $id ); ?>" <?php selected( $orderby, $id ); ?>><?php echo esc_html( $name ); ?></button></li> -->
			<?php //endforeach; ?>
			</ul>

			<?php
				if(is_search()){
					// Keep query string vars intact
					foreach ( $_GET as $key => $val ) {
						if ( 'orderby' === $key || 'submit' === $key || 'filterby' === $key ) {
							continue;
						}
						if ( is_array( $val ) ) {
							foreach( $val as $innerVal ) {
								echo '<input type="hidden" name="' . esc_attr( $key ) . '[]" value="' . esc_attr( $innerVal ) . '" />';
							}
						} else {
							echo '<input type="hidden" name="' . esc_attr( $key ) . '" value="' . esc_attr( $val ) . '" />';
						}
					}
				}
			?>
			</form>
		</li>
	</ul>

