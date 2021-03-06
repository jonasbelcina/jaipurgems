<?php
/**
 * Product quantity inputs
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/global/quantity-input.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.5.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}
global $product;
// var_dump($product);
$terms = get_the_terms( $product->ID, 'product_cat' );
foreach ($terms as $term) {
    if($term->parent != 0) {
        $product_cat_id = $term->term_id;
        break;
    }
}
?>
<div class="quantity input-group <?php if($product_cat_id != 7) { ?>not-bangle<?php } ?>">
	<div class="label">Qty:</div>
	<input type="number" step="<?php echo esc_attr( $step ); ?>" min="<?php echo esc_attr( $min_value ); ?>" max="<?php echo esc_attr( $max_value ); ?>" name="<?php echo esc_attr( $input_name ); ?>" value="<?php echo esc_attr( $input_value ); ?>" title="<?php echo esc_attr_x( 'Qty', 'Product quantity input tooltip', 'woocommerce' ) ?>" class="input-text qty text" size="4" />
</div>

<?php if(!is_cart()) : ?>
	<?php if($product_cat_id == 7) : ?>
		<div class="size input-group">
			<div class="label">Size:</div>
			<select name="size" required>
				<option value="2-2">2-2</option>
				<option value="2-4">2-4</option>
				<option value="2-6">2-6</option>
				<option value="2-8">2-8</option>
				<option value="2-10">2-10</option>
				<option value="2-12">2-12</option>
				<option value="2-14">2-14</option>
				<option value="3">3</option>
			</select>
		</div>

		<a href="#" id="size-chart" data-toggle="modal" data-target="#sizeChart">Size chart</a>
	<?php endif; ?>
<?php endif; ?>
