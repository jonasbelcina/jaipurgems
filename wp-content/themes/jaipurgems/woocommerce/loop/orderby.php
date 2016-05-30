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

?>
<form class="woocommerce-ordering" method="get">
	<ul>
		<li>
			<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Material</a>
			<ul class="dropdown-menu">
				<li><button type="submit" name="material">Material 1</button></li>
				<li><button type="submit" name="material">Material 2</button></li>
				<li><button type="submit" name="material">Material 3</button></li>
			</ul>
		</li>
		<li>
			<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Collection</a>
			<ul class="dropdown-menu">
				<li><button type="submit" name="collection">Collection 1</button></li>
				<li><button type="submit" name="collection">Collection 2</button></li>
				<li><button type="submit" name="collection">Collection 3</button></li>
			</ul>
		</li>
		<li>
			<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Product Type</a>
			<ul class="dropdown-menu">
				<li><button type="submit" name="product-type">Product Type 1</button></li>
				<li><button type="submit" name="product-type">Product Type 2</button></li>
				<li><button type="submit" name="product-type">Product Type 3</button></li>
			</ul>
		</li>
		<li>
			<a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Sort By</a>
			<ul class="dropdown-menu">
			<?php foreach ( $catalog_orderby_options as $id => $name ) : ?>
				<li><button type="submit" name="orderby" value="<?php echo esc_attr( $id ); ?>" <?php selected( $orderby, $id ); ?>><?php echo esc_html( $name ); ?></button></li>
			<?php endforeach; ?>
			</ul>
		</li>
	</ul>

	<!-- <select name="orderby" class="orderby">
		<?php foreach ( $catalog_orderby_options as $id => $name ) : ?>
			<option value="<?php echo esc_attr( $id ); ?>" <?php selected( $orderby, $id ); ?>><?php echo esc_html( $name ); ?></option>
		<?php endforeach; ?>
	</select> -->
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
