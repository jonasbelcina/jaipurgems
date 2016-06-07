<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

	<footer>
		<div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="row">
                                    <label>Join for newsletter</label>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <div class="row">
                                    <form>
                                        <div class="col-xs-9">
                                            <div class="row">
                                                <input type="email" placeholder="E-MAIL"></input>
                                            </div>
                                        </div>

                                        <div class="col-xs-3">
                                            <div class="row">
                                                <button type="submit">Sign In</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4 col-md-offset-2 col-sm-offset-2 footer-social">
                        <div class="row">
                            <label>Social Media</label>

                            <a href="<?php the_field('facebook' , 'options'); ?>" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="<?php the_field('twitter' , 'options'); ?>" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="<?php the_field('google_plus' , 'options'); ?>" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                            <a href="<?php the_field('pinterest' , 'options'); ?>" target="_blank"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                            <a href="<?php the_field('youtube' , 'options'); ?>" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-mid">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-8 footer-menu">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="row">
                                    <h3>Maison <span class="glyphicon glyphicon-plus"></span></h3>
                                    <ul>
                                        <li><a href="#">Our Legacy</a></li>
                                        <li><a href="#">Philanthropy</a></li>
                                        <li><a href="#">Product Line</a></li>
                                        <li><a href="#">News</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="row">
                                    <h3>Shop Now <span class="glyphicon glyphicon-plus"></span></h3>
                                    <ul>
                                        <li><a href="#">Bangles</a></li>
                                        <li><a href="#">Earrings</a></li>
                                        <li><a href="#">Necklaces</a></li>
                                        <li><a href="#">Our Collections</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="row">
                                    <h3>My Account <span class="glyphicon glyphicon-plus"></span></h3>
                                    <ul>
                                        <li><a href="#">Sign In / Sign Up</a></li>
                                        <li><a href="#">FAQ</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Shipping &amp; Returns</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6 locator">
                                <div class="row">
                                    <a href="#">Store Locator</a>
                                    <ul>
                                        <li><a href="#">Contact via Email</a></li>
                                        <li><a href="#">Make an Appointment</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-md-offset-1 col-sm-4 footer-logo">
                        <div class="row">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-footer.png" alt="Jaipur Gems" />
                            <div class="footer-copy">&copy;2016 . All rights reserved.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="footer-cc">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/cc.png" alt="Payment Options" />
                    </div>

                    <div class="footer-heych">
                        Powered by <a href="http://heych.com/" target="_blank">Heych</a>
                    </div>
                </div>
            </div>
        </div>

        <a href="#top" class="cd-top"><span class="glyphicon glyphicon-chevron-up"></span></a>
	</footer>

<?php wp_footer(); ?>
</body>
</html>
