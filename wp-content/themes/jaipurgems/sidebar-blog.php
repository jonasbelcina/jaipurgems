<?php
/**
 * The template for the sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<div class="col-lg-3 col-md-3 col-sm-3 blog-sidebar">
	<div class="sidebox newsletter">
		<h2>Newsletter</h2>
		<p>Subscribe to our weekly newsletter</p>
		<form>
			<input type="text" placeholder="Name" />
			<input type="email" placeholder="Email" />
			<div class="clearfix"></div>
			<button type="submit">Sign In</button>
		</form>
	</div>

	<div class="sidebox connect">
		<h2>Connect</h2>
		<p>Keep up to date</p>
		<div class="social-icons">
			<a target="_blank" href="#"></a>
			<a target="_blank" href="#"></a>
			<a target="_blank" href="#"></a>
			<a target="_blank" href="#"></a>
		</div>
	</div>

	<div class="sidebox tweets">
		<h2>Recent Tweets</h2>
		<a class="twitter-timeline" href="https://twitter.com/Meher_Riddhima" data-widget-id="608965328664535040">Tweets by @Meher_Riddhima</a>
        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
	</div>

	<div class="sidebox insta">
		<h2>Our Instagram</h2>
		<!-- INSTANSIVE WIDGET --><script src="//instansive.com/widget/js/instansive.js"></script><iframe src="//instansive.com/widgets/df54854109e0a5540df1f1ea455b4060acbbfcd3.html" id="instansive_df54854109" name="instansive_df54854109"  scrolling="no" allowtransparency="true" class="instansive-widget" style="width: 100%; border: 0; overflow: hidden;"></iframe>
		<a target="_blank" href="https://instagram.com/meher_riddhima/" class="follow-insta"><img src="<?=get_template_directory_uri()?>/assets/images/icon-instagram.png">follow on instagram</a>
	</div>
</div>
