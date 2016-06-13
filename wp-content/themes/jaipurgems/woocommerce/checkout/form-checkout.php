<?php
/**
 * Checkout Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-checkout.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.3.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
?>

<div class="container">

	<?php //wc_print_notices();

	do_action( 'woocommerce_before_checkout_form', $checkout ); ?>

	<div class="row">

		<div class="col-md-8 col-sm-8">
			<!-- <div class="row"> -->
				<div class="checkout_panel step_1 <?php if(!is_user_logged_in()) { echo 'active'; } ?>">
					<h2>1. Sign In</h2>
					<div class="content">
						<div class="col-md-6 col-sm-6">
							<h3>New user</h3>
							<p>Checkout using just your email address:</p>
							<form class="login guest-form">
								<p class="form-row form-row-wide">
									<label for="email">Email <span class="required">*</span></label>
									<input type="email" class="input-text" name="email" id="email" />
								</p>

								<p class="guest-error">Please enter a valid email</p>

								<p class="form-row sign-in-btn">
									<input type="submit" class="button" name="guest-login" value="Continue as Guest" />
								</p>
							</form>
						</div>

						<div class="col-md-6 col-sm-6">
							<?php echo do_shortcode('[woocommerce_my_account]'); ?>
						</div>
					</div>

					<?php
					// If checkout registration is disabled and not logged in, the user cannot checkout
					if ( ! $checkout->enable_signup && ! $checkout->enable_guest_checkout && ! is_user_logged_in() ) {
						echo apply_filters( 'woocommerce_checkout_must_be_logged_in_message', __( 'You must be logged in to checkout.', 'woocommerce' ) );
						return;
					}

					?>
				</div>

				<div class="checkout_panel step_2 <?php if(is_user_logged_in()) { echo 'active'; } ?>">
					<h2>2. Ship To</h2>
					<div class="content">
						<div class="col-md-12 col-sm-12">
							<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( wc_get_checkout_url() ); ?>" enctype="multipart/form-data">

								<?php if ( sizeof( $checkout->checkout_fields ) > 0 ) : ?>

									<?php do_action( 'woocommerce_checkout_before_customer_details' ); ?>

									<div class="col2-set" id="customer_details">
										<!-- <div class="col-1"> -->
											<?php do_action( 'woocommerce_checkout_billing' ); ?>
										<!-- </div> -->

										<!-- <div class="col-2">
											<?php //do_action( 'woocommerce_checkout_shipping' ); ?>
										</div> -->
									</div>

									<div class="billing-error">Please enter all required fields</div>

									<div class="panel-btn">
										<a href="">Proceed to payment</a>
									</div>

									<?php do_action( 'woocommerce_checkout_after_customer_details' ); ?>

								<?php endif; ?>

							</form>
						</div>
					</div>
				</div>

				<div class="checkout_panel step_3">
					<h2>3. Payment</h2>
					<div class="content">
						<div class="col-md-12">
							<?php do_action( 'woocommerce_checkout_before_order_review' ); ?>

							<div id="order_review" class="woocommerce-checkout-review-order">
								<?php //do_action( 'woocommerce_checkout_order_review' ); ?>
							</div>

							<?php do_action( 'woocommerce_checkout_after_order_review' ); ?>

							<?php

								if ( ! is_ajax() ) {
									do_action( 'woocommerce_review_order_before_payment' );
								}
								?>
								<div id="payment" class="woocommerce-checkout-payment">
									<?php if ( WC()->cart->needs_payment() ) : ?>
										<ul class="wc_payment_methods payment_methods methods">
											<?php
												if ( ! empty( $available_gateways ) ) {
													foreach ( $available_gateways as $gateway ) {
														wc_get_template( 'checkout/payment-method.php', array( 'gateway' => $gateway ) );
													}
												} else {
													echo '<li>' . apply_filters( 'woocommerce_no_available_payment_methods_message', WC()->customer->get_country() ? __( 'Sorry, it seems that there are no available payment methods for your state. Please contact us if you require assistance or wish to make alternate arrangements.', 'woocommerce' ) : __( 'Please fill in your details above to see available payment methods.', 'woocommerce' ) ) . '</li>';
												}
											?>
										</ul>
									<?php endif; ?>
									<div class="form-row place-order">
										<noscript>
											<?php _e( 'Since your browser does not support JavaScript, or it is disabled, please ensure you click the <em>Update Totals</em> button before placing your order. You may be charged more than the amount stated above if you fail to do so.', 'woocommerce' ); ?>
											<br/><input type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="<?php esc_attr_e( 'Update totals', 'woocommerce' ); ?>" />
										</noscript>

										<?php wc_get_template( 'checkout/terms.php' ); ?>

										<?php do_action( 'woocommerce_review_order_before_submit' ); ?>

										<?php echo apply_filters( 'woocommerce_order_button_html', '<input type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="' . esc_attr( $order_button_text ) . '" data-value="' . esc_attr( $order_button_text ) . '" />' ); ?>

										<?php do_action( 'woocommerce_review_order_after_submit' ); ?>

										<?php wp_nonce_field( 'woocommerce-process_checkout' ); ?>
									</div>
								</div>
								<?php
								if ( ! is_ajax() ) {
									do_action( 'woocommerce_review_order_after_payment' );
								}

							?>

						</div>
					</div>
				</div>

			<!-- </div> -->
		</div>

		<div class="col-md-4 col-sm-4">
			<div class="checkout-review">
				<h2>Review your order</h2>
				<ul>
					<?php 
					//do_action( 'woocommerce_checkout_order_review' );

					// global $woocommerce;
				 //    $items = $woocommerce->cart->get_cart();

			  //       foreach($items as $item => $values) { 
			  //           $_product = $values['data']->post;
			  //           //product image
			  //           $getProductDetail = wc_get_product( $values['product_id'] );
			  //           echo $getProductDetail->get_image(); // accepts 2 arguments ( size, attr )

			  //           echo "<b>".$_product->post_title.'</b>  <br> Quantity: '.$values['quantity'].'<br>'; 
			  //           $price = get_post_meta($values['product_id'] , '_price', true);
			  //           echo "  Price: ".$price."<br>";
			  //           /*Regular Price and Sale Price*/
			  //           echo "Regular Price: ".get_post_meta($values['product_id'] , '_regular_price', true)."<br>";
			  //           echo "Sale Price: ".get_post_meta($values['product_id'] , '_sale_price', true)."<br>";
			  //       }

					foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
						$_product     = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );
						$product_id   = apply_filters( 'woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key );

						$thumbnail = apply_filters( 'woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key ); ?>

						<li>
							<div class="review-img">
								<?php echo $thumbnail; ?>
							</div>

							<ul class="review-details">
								<li class="review-prod-title"><?php echo $_product->get_title(); ?></li>
								<li>Size: <?php echo ($cart_item['variation']) ? $cart_item['variation']['attribute_pa_size'] : $cart_item['size']; ?></li>
								<li>Price: <?php echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key ); ?></li>
								<li>
									Quantity: <?php echo $cart_item['quantity']; ?>
									
								</li>
							</ul>
						</li>
						
					<?php }

					?>
				</ul>
			</div>
		</div>

	<?php do_action( 'woocommerce_after_checkout_form', $checkout ); ?>

</div>

