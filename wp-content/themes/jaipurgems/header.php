<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */


	if(isset($_POST['ch-country'])) {
		$get_country = json_decode(file_get_contents('https://restcountries.eu/rest/v1/alpha/' . $_POST['ch-country']), true);
		$country = $get_country['name'];
		// var_dump($get_country);
		// echo $country;
		$country_code = strtolower($_POST['ch-country']);

		unset( $_COOKIE['country'] );
		unset( $_COOKIE['country_code'] );

		setcookie('country' , $country, time() + ( 7 * 86400 ), '/');
		setcookie('country_code' , $country_code, time() + ( 7 * 86400 ), '/');
	} else {
		if(isset($_COOKIE['country']) && $_COOKIE['country'] != '' && isset($_COOKIE['country_code']) && $_COOKIE['country_code'] != ''){
			$country = $_COOKIE['country'];
			$country_code = $_COOKIE['country_code'];
			// echo 'cookie = ' . $_COOKIE['country']; 
		}
		else{
			$ip = get_client_ip();
			$location = json_decode(file_get_contents('http://api.ipinfodb.com/v3/ip-city/?key=ed7d94447150af404569fcd04b95876cc93d0efa91be933d47632085239bdea2&ip='.$ip.'&format=json') , true);

			if(isset($location['countryName']) && $location['countryName'] != '' && $location['countryName'] != '-') {
				$country  = $location['countryName'];
				// echo 'country = ' . $country;
				$country_code = strtolower($location['countryCode']);
				// echo 'country_code = ' . $country_code;
			} else {
				// $country = 'United Arab Emirates';
			}
			setcookie('country' , $country, time() + ( 7 * 86400 ), '/');
			setcookie('country_code' , $country_code, time() + ( 7 * 86400 ), '/');

			// echo 'cookiecountry = ' . $_COOKIE['country']; 
			// setcookie('location', $location);

			// // server should keep session data for AT LEAST 1 hour
			// ini_set('session.gc_maxlifetime', 3600);

			// // each client should remember their session id for EXACTLY 1 hour
			// session_set_cookie_params(3600);

			// session_start(); // ready to go!
		}
	}

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>
	<link rel="shortcut icon" href="<?php the_field('favicon' , 'options'); ?>" />
	<?php if(is_single()) : ?>
		<meta property="og:image" content="<?php get_the_post_thumbnail('full'); ?>" />
	<?php endif; ?>

	<?php wp_head(); ?>

	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-79596636-3', 'auto');
	  ga('send', 'pageview');

	</script>
</head>

<?php 
$addtl_class = ' ';
$selected_country = '';
if (isset($_POST['location'])) {   
    $_SESSION['selected_country'] = $_POST['location'];
}

if(!isset($_SESSION['selected_country'])) {
  	// echo "The cookie: '" . $selected_country . "' is not set.";
  	$addtl_class = 'no-country';
} else {
  	// echo "The cookie '" . $selected_country . "' is set.";
  	// echo "Cookie is:  " . $_COOKIE['selected_country'];
  	// $selected_country = $_COOKIE['selected_country'];
}

// echo $_COOKIE['selected_country'];

// if($selected_country == '') {
// 	$addtl_class = 'no-country';
// }
// var_dump($_COOKIE);
?>

<body <?php body_class($addtl_class); ?>>
	<div class="body-wrap">

	<div class="page-loader">
		<img id="slidecaption" src="<?php echo get_template_directory_uri(); ?>/assets/images/crown.png" />
	</div>

	<?php if(!isset($_SESSION['selected_country'])) { ?>
		<div class="landing">
			<div class="landing-content">
				<img class="landing-logo" src="<?php echo get_template_directory_uri(); ?>/assets/images/landing-logo.png" alt="Jaipur Gems" />
				<div class="landing-bangle">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/landing-bangle.png" alt="Jaipur Gems" />
					<p>Select Your Location:</p>
					<form class="country-select" method="post">
						<button type="submit" name="location" value="india" class="india">India</button>
						<button type="submit" name="location" value="international" class="international">International</button>
					</form>

					<!--div class="new-form"-->
						<?php //do_action('wcpbc_manual_country_selector'); ?>
					<!--/div-->
				</div>
			</div>
		</div>
	<?php } ?>

	<div class="content-wrap" style="display: <?php echo (!isset($_SESSION['selected_country'])) ? 'none' : 'block'; ?>">

	<?php if (isset($_POST['location'])) {  ?>
		<div class="cookie-notice">
			<div class="container">
				<p>We use cookies to improve our site and your shopping experience. By continuing to browse our site you accept our cookie policy. <a href="<?php echo home_url(); ?>/cookie-policy">Find out more</a>. <a class="cookie-close" href="">Close</a></p>
			</div>
		</div>
	<?php } ?>

	<div class="ramadan-campaign">
		<div class="container">
			<p>This Eid enjoy AED 1000 off on your purchase <a href="http://ramadan.jaipurgems.ae/" target="_blank">Register</a></p>
		</div>
	</div>

	<header>
		<div class="navbar-top">
			<div class="header-left">
				Insured Express Shipping To <span class="uae"><?php echo $country; ?></span>
				<form method="post" class="change-country">
					<select class="ch-country" name="ch-country">
						<option value="AF">Afghanistan</option>
						<option value="AX">Åland Islands</option>
						<option value="AL">Albania</option>
						<option value="DZ">Algeria</option>
						<option value="AS">American Samoa</option>
						<option value="AD">Andorra</option>
						<option value="AO">Angola</option>
						<option value="AI">Anguilla</option>
						<option value="AQ">Antarctica</option>
						<option value="AG">Antigua and Barbuda</option>
						<option value="AR">Argentina</option>
						<option value="AM">Armenia</option>
						<option value="AW">Aruba</option>
						<option value="AU">Australia</option>
						<option value="AT">Austria</option>
						<option value="AZ">Azerbaijan</option>
						<option value="BS">Bahamas</option>
						<option value="BH">Bahrain</option>
						<option value="BD">Bangladesh</option>
						<option value="BB">Barbados</option>
						<option value="BY">Belarus</option>
						<option value="BE">Belgium</option>
						<option value="BZ">Belize</option>
						<option value="BJ">Benin</option>
						<option value="BM">Bermuda</option>
						<option value="BT">Bhutan</option>
						<option value="BO">Bolivia, Plurinational State of</option>
						<option value="BQ">Bonaire, Sint Eustatius and Saba</option>
						<option value="BA">Bosnia and Herzegovina</option>
						<option value="BW">Botswana</option>
						<option value="BV">Bouvet Island</option>
						<option value="BR">Brazil</option>
						<option value="IO">British Indian Ocean Territory</option>
						<option value="BN">Brunei Darussalam</option>
						<option value="BG">Bulgaria</option>
						<option value="BF">Burkina Faso</option>
						<option value="BI">Burundi</option>
						<option value="KH">Cambodia</option>
						<option value="CM">Cameroon</option>
						<option value="CA">Canada</option>
						<option value="CV">Cape Verde</option>
						<option value="KY">Cayman Islands</option>
						<option value="CF">Central African Republic</option>
						<option value="TD">Chad</option>
						<option value="CL">Chile</option>
						<option value="CN">China</option>
						<option value="CX">Christmas Island</option>
						<option value="CC">Cocos (Keeling) Islands</option>
						<option value="CO">Colombia</option>
						<option value="KM">Comoros</option>
						<option value="CG">Congo</option>
						<option value="CD">Congo, the Democratic Republic of the</option>
						<option value="CK">Cook Islands</option>
						<option value="CR">Costa Rica</option>
						<option value="CI">Côte d'Ivoire</option>
						<option value="HR">Croatia</option>
						<option value="CU">Cuba</option>
						<option value="CW">Curaçao</option>
						<option value="CY">Cyprus</option>
						<option value="CZ">Czech Republic</option>
						<option value="DK">Denmark</option>
						<option value="DJ">Djibouti</option>
						<option value="DM">Dominica</option>
						<option value="DO">Dominican Republic</option>
						<option value="EC">Ecuador</option>
						<option value="EG">Egypt</option>
						<option value="SV">El Salvador</option>
						<option value="GQ">Equatorial Guinea</option>
						<option value="ER">Eritrea</option>
						<option value="EE">Estonia</option>
						<option value="ET">Ethiopia</option>
						<option value="FK">Falkland Islands (Malvinas)</option>
						<option value="FO">Faroe Islands</option>
						<option value="FJ">Fiji</option>
						<option value="FI">Finland</option>
						<option value="FR">France</option>
						<option value="GF">French Guiana</option>
						<option value="PF">French Polynesia</option>
						<option value="TF">French Southern Territories</option>
						<option value="GA">Gabon</option>
						<option value="GM">Gambia</option>
						<option value="GE">Georgia</option>
						<option value="DE">Germany</option>
						<option value="GH">Ghana</option>
						<option value="GI">Gibraltar</option>
						<option value="GR">Greece</option>
						<option value="GL">Greenland</option>
						<option value="GD">Grenada</option>
						<option value="GP">Guadeloupe</option>
						<option value="GU">Guam</option>
						<option value="GT">Guatemala</option>
						<option value="GG">Guernsey</option>
						<option value="GN">Guinea</option>
						<option value="GW">Guinea-Bissau</option>
						<option value="GY">Guyana</option>
						<option value="HT">Haiti</option>
						<option value="HM">Heard Island and McDonald Islands</option>
						<option value="VA">Holy See (Vatican City State)</option>
						<option value="HN">Honduras</option>
						<option value="HK">Hong Kong</option>
						<option value="HU">Hungary</option>
						<option value="IS">Iceland</option>
						<option value="IN">India</option>
						<option value="ID">Indonesia</option>
						<option value="IR">Iran, Islamic Republic of</option>
						<option value="IQ">Iraq</option>
						<option value="IE">Ireland</option>
						<option value="IM">Isle of Man</option>
						<option value="IL">Israel</option>
						<option value="IT">Italy</option>
						<option value="JM">Jamaica</option>
						<option value="JP">Japan</option>
						<option value="JE">Jersey</option>
						<option value="JO">Jordan</option>
						<option value="KZ">Kazakhstan</option>
						<option value="KE">Kenya</option>
						<option value="KI">Kiribati</option>
						<option value="KP">Korea, Democratic People's Republic of</option>
						<option value="KR">Korea, Republic of</option>
						<option value="KW">Kuwait</option>
						<option value="KG">Kyrgyzstan</option>
						<option value="LA">Lao People's Democratic Republic</option>
						<option value="LV">Latvia</option>
						<option value="LB">Lebanon</option>
						<option value="LS">Lesotho</option>
						<option value="LR">Liberia</option>
						<option value="LY">Libya</option>
						<option value="LI">Liechtenstein</option>
						<option value="LT">Lithuania</option>
						<option value="LU">Luxembourg</option>
						<option value="MO">Macao</option>
						<option value="MK">Macedonia, the former Yugoslav Republic of</option>
						<option value="MG">Madagascar</option>
						<option value="MW">Malawi</option>
						<option value="MY">Malaysia</option>
						<option value="MV">Maldives</option>
						<option value="ML">Mali</option>
						<option value="MT">Malta</option>
						<option value="MH">Marshall Islands</option>
						<option value="MQ">Martinique</option>
						<option value="MR">Mauritania</option>
						<option value="MU">Mauritius</option>
						<option value="YT">Mayotte</option>
						<option value="MX">Mexico</option>
						<option value="FM">Micronesia, Federated States of</option>
						<option value="MD">Moldova, Republic of</option>
						<option value="MC">Monaco</option>
						<option value="MN">Mongolia</option>
						<option value="ME">Montenegro</option>
						<option value="MS">Montserrat</option>
						<option value="MA">Morocco</option>
						<option value="MZ">Mozambique</option>
						<option value="MM">Myanmar</option>
						<option value="NA">Namibia</option>
						<option value="NR">Nauru</option>
						<option value="NP">Nepal</option>
						<option value="NL">Netherlands</option>
						<option value="NC">New Caledonia</option>
						<option value="NZ">New Zealand</option>
						<option value="NI">Nicaragua</option>
						<option value="NE">Niger</option>
						<option value="NG">Nigeria</option>
						<option value="NU">Niue</option>
						<option value="NF">Norfolk Island</option>
						<option value="MP">Northern Mariana Islands</option>
						<option value="NO">Norway</option>
						<option value="OM">Oman</option>
						<option value="PK">Pakistan</option>
						<option value="PW">Palau</option>
						<option value="PS">Palestinian Territory, Occupied</option>
						<option value="PA">Panama</option>
						<option value="PG">Papua New Guinea</option>
						<option value="PY">Paraguay</option>
						<option value="PE">Peru</option>
						<option value="PH">Philippines</option>
						<option value="PN">Pitcairn</option>
						<option value="PL">Poland</option>
						<option value="PT">Portugal</option>
						<option value="PR">Puerto Rico</option>
						<option value="QA">Qatar</option>
						<option value="RE">Réunion</option>
						<option value="RO">Romania</option>
						<option value="RU">Russian Federation</option>
						<option value="RW">Rwanda</option>
						<option value="BL">Saint Barthélemy</option>
						<option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
						<option value="KN">Saint Kitts and Nevis</option>
						<option value="LC">Saint Lucia</option>
						<option value="MF">Saint Martin (French part)</option>
						<option value="PM">Saint Pierre and Miquelon</option>
						<option value="VC">Saint Vincent and the Grenadines</option>
						<option value="WS">Samoa</option>
						<option value="SM">San Marino</option>
						<option value="ST">Sao Tome and Principe</option>
						<option value="SA">Saudi Arabia</option>
						<option value="SN">Senegal</option>
						<option value="RS">Serbia</option>
						<option value="SC">Seychelles</option>
						<option value="SL">Sierra Leone</option>
						<option value="SG">Singapore</option>
						<option value="SX">Sint Maarten (Dutch part)</option>
						<option value="SK">Slovakia</option>
						<option value="SI">Slovenia</option>
						<option value="SB">Solomon Islands</option>
						<option value="SO">Somalia</option>
						<option value="ZA">South Africa</option>
						<option value="GS">South Georgia and the South Sandwich Islands</option>
						<option value="SS">South Sudan</option>
						<option value="ES">Spain</option>
						<option value="LK">Sri Lanka</option>
						<option value="SD">Sudan</option>
						<option value="SR">Suriname</option>
						<option value="SJ">Svalbard and Jan Mayen</option>
						<option value="SZ">Swaziland</option>
						<option value="SE">Sweden</option>
						<option value="CH">Switzerland</option>
						<option value="SY">Syrian Arab Republic</option>
						<option value="TW">Taiwan, Province of China</option>
						<option value="TJ">Tajikistan</option>
						<option value="TZ">Tanzania, United Republic of</option>
						<option value="TH">Thailand</option>
						<option value="TL">Timor-Leste</option>
						<option value="TG">Togo</option>
						<option value="TK">Tokelau</option>
						<option value="TO">Tonga</option>
						<option value="TT">Trinidad and Tobago</option>
						<option value="TN">Tunisia</option>
						<option value="TR">Turkey</option>
						<option value="TM">Turkmenistan</option>
						<option value="TC">Turks and Caicos Islands</option>
						<option value="TV">Tuvalu</option>
						<option value="UG">Uganda</option>
						<option value="UA">Ukraine</option>
						<option value="AE">United Arab Emirates</option>
						<option value="GB">United Kingdom</option>
						<option value="US">United States</option>
						<option value="UM">United States Minor Outlying Islands</option>
						<option value="UY">Uruguay</option>
						<option value="UZ">Uzbekistan</option>
						<option value="VU">Vanuatu</option>
						<option value="VE">Venezuela, Bolivarian Republic of</option>
						<option value="VN">Viet Nam</option>
						<option value="VG">Virgin Islands, British</option>
						<option value="VI">Virgin Islands, U.S.</option>
						<option value="WF">Wallis and Futuna</option>
						<option value="EH">Western Sahara</option>
						<option value="YE">Yemen</option>
						<option value="ZM">Zambia</option>
						<option value="ZW">Zimbabwe</option>
					</select>
				</form>
				<img src="http://www.geonames.org/flags/x/<?php echo $country_code; ?>.gif" /> | <?php echo do_shortcode('[woocs]'); ?>
			</div>

			<div class="header-right-top">
				<ul>
					<li>
						<form method="get" class="open-search" action="<?php echo home_url();?>" style="">
							<input type="text" name="s" placeholder="Search">
							<input type="hidden" name="post_type" value="product">
							<button type="button"></button>
						</form>
					</li>
					<li><a href="<?php echo home_url(); ?>/store-locator">Store Locator</a></li>
					<li>
						<div class="contact-dropdown">
							Contact
							<div class="contact-dropdown-details">
								<div class="service">
									<span>Customer Service Office Hours:</span>
									<p>Sat to Thu 9:00 AM to 6:00 PM (GMT +04:00)</p>
								</div>

								<div class="store">
									<p style="padding-bottom: 5px;">
										<i class="fa fa-home"></i>&nbsp;&nbsp;25H Almas Tower<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JLT Dubai
									</p>
									<p>
										<a href="tel:+971528804545"><i class="fa fa-phone" style="font-size: 14px;"></i>&nbsp;&nbsp;Helpline: +971 52 880 4545 <span>(Available)</span></a>
									</p>
								</div>

								<div class="chat">
									<p>
										<a href=""><i class="fa fa-comment-o"></i>&nbsp;&nbsp;Live Chat <span>(Available)</span></a>
									</p>
									<p>
										<a href="mailto:dubai@jaipurgems.com"><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;Email: dubai@jaipurgems.com <span>(Available)</span></a>
									</p>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<a class="navbar-brand" href="<?php echo home_url(); ?>">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-new.png" alt="Jaipur Gems" />
			</a>

			<div class="header-right-bottom">
				<ul>
					<li><a href="<?php echo home_url(); ?>/wishlist/view"><span><?php echo yith_wcwl_count_products(); ?></span><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
					<li><a href="<?php echo home_url(); ?>/my-account"><i class="fa fa-user" aria-hidden="true"></i></a></li>
					<li><a href="<?php echo WC()->cart->get_cart_url(); ?>"><span class="cart-qty"><?php echo WC()->cart->get_cart_contents_count(); ?></span><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div>

		<nav class="navbar navbar-default">
			<div class="container">

			<a class="mobile-fixed-logo" href="<?php echo home_url(); ?>">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/crown-black.png" alt="Jaipur Gems" />
			</a>

			<ul class="mobile-icons">
				<li><a href="<?php echo home_url(); ?>/wishlist/view"><span><?php echo yith_wcwl_count_products(); ?></span><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
				<li><a href="<?php echo home_url(); ?>/my-account"><i class="fa fa-user" aria-hidden="true"></i></a></li>
				<li><a href="<?php echo WC()->cart->get_cart_url(); ?>"><span class="cart-qty"><?php echo WC()->cart->get_cart_contents_count(); ?></span><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
			</ul>

				<div class="navbar-header">

					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li>
								<a href="<?php echo home_url(); ?>/product-category/jewellery" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Jewellery <span class="glyphicon glyphicon-plus"></span><i class="fa fa-angle-down" aria-hidden="true"></i></a>

								<div class="dropdown-menu main-dropdown">
									<!-- <div class="container"> -->
										<!-- <div class="row"> -->
											<div class="dropdown-sub">
												<h2>Jewellery<span>Explore Jewellery</span></h2>
												<?php
													$args = array(
																'taxonomy'      => 'product_cat',
																'parent'        => 6,
																'hide_empty'    => 0
															);

													$child_categories = get_categories($args);
													if($child_categories) : ?>
														<ul>
															<?php foreach($child_categories as $child_category) : ?>
																<li>
																	<a href="<?php echo get_term_link($child_category, 'product_cat'); ?>"><?php echo $child_category->name; ?></a>
																	<?php $drop_img = get_field('dropdown_image', 'product_cat_' . $child_category->term_id); ?>
																	<img class="dropdown-img" src="<?php echo $drop_img['url']; ?>" alt="<?php echo $drop_img['alt']; ?>" />
																</li>
															<?php endforeach; ?>
														</ul>
													<?php endif;
												?>
											</div>

										<!-- </div> -->
									<!-- </div> -->
								</div>
							</li>
							<li><a href="<?php echo home_url(); ?>/collection/sparkling-diamond-collection">Diamonds</a></li>
							<li><a href="<?php echo home_url(); ?>/collections">Collections</a></li>
							<li><a href="<?php echo home_url(); ?>/about-us">Our Legacy</a></li>
							<li>
								<a href="#" class="dropdown-toggle" data-hover="dropdown" data-delay="100" data-close-others="true">Our World <span class="glyphicon glyphicon-plus"></span><i class="fa fa-angle-down" aria-hidden="true"></i></a>

								<div class="dropdown-menu main-dropdown">
									<div class="container">
										<div class="row">
											<div class="dropdown-sub">
												<h2>Our World<span>Explore</span></h2>
												<ul>
													<li>
														<a href="<?php echo home_url(); ?>/campaigns">Campaigns</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/dropdown-campaigns.jpg" alt="Campaigns" />
													</li>
													<li>
														<a href="<?php echo home_url(); ?>/media">Media</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/dropdown-media.jpg" alt="Media" />
													</li>
													<li>
														<a href="<?php echo home_url(); ?>/events">Events</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/dropdown-events.jpg" alt="Events" />
													</li> 
													<li>
														<a href="<?php echo home_url(); ?>/celebrities">Celebrities</a>
														<img class="dropdown-img" src="<?php echo get_template_directory_uri(); ?>/assets/images/DROPDWN-celeb.jpg" alt="Celebrities" />
													</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
							</li>
							<li><a href="<?php echo home_url(); ?>/store-locator">Store Locator</a></li>
							<li><a href="" data-toggle="modal" data-target="#contactForm">Contact</a></li>
						</ul>

						<a class="fixed-logo" href="<?php echo home_url(); ?>">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/images/crown.png" alt="Jaipur Gems" />
						</a>
					</div><!-- #navbar -->

				</div>
			</div>
		</nav>
	</header>

		<div class="search-bar">
			<div class="container">
				<div class="open-search">
					<span class="glyphicon glyphicon-remove"></span>
				</div>

				<div class="search-box">
					<div class="col-md-8 col-md-offset-2">
						<form class="search" method="get" action="<?php echo home_url(); ?>">
							<div class="col-xs-10">
								<div class="row">
									<input type="text" name="s" placeholder="I am looking for">
									<input type="hidden" name="post_type" value="product">
								</div>
							</div>

							<div class="col-xs-2">
								<div class="row">
									<button type="submit"><span class="glyphicon glyphicon-search"></span></button>
								</div>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>













