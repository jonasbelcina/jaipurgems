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

	<?php wc_print_notices();

	//do_action( 'woocommerce_before_checkout_form', $checkout ); ?>

	<div class="row">

		<div class="col-md-8 col-sm-8">
			<div class="row">
				<div class="checkout_panel step_1">
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

				<div class="checkout_panel step_2">
					<h2>2. Ship To</h2>
					<div class="content">
						<div class="col-md-12 col-sm-12">
							<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( wc_get_checkout_url() ); ?>" enctype="multipart/form-data">

								<?php if ( sizeof( $checkout->checkout_fields ) > 0 ) : ?>

									<?php do_action( 'woocommerce_checkout_before_customer_details' ); ?>

									<div class="col2-set" id="customer_details">
										<div class="col-1">
											<?php do_action( 'woocommerce_checkout_billing' ); ?>
										</div>

										<div class="col-2">
											<?php do_action( 'woocommerce_checkout_shipping' ); ?>
										</div>
									</div>

									<?php do_action( 'woocommerce_checkout_after_customer_details' ); ?>

								<?php endif; ?>

								<h3 id="order_review_heading"><?php _e( 'Your order', 'woocommerce' ); ?></h3>

								<?php do_action( 'woocommerce_checkout_before_order_review' ); ?>

								<div id="order_review" class="woocommerce-checkout-review-order">
									<?php do_action( 'woocommerce_checkout_order_review' ); ?>
								</div>

								<?php do_action( 'woocommerce_checkout_after_order_review' ); ?>

							</form>
						</div>
					</div>
				</div>

			</div>
		</div>

	<?php do_action( 'woocommerce_after_checkout_form', $checkout ); ?>

</div>

