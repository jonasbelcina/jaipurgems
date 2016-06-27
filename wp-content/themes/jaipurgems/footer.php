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
									<label>Be the first one to know</label>
								</div>
							</div>

							<div class="col-md-8">
								<div class="row">
									<!-- <form>
										<div class="col-xs-9">
											<div class="row">
												<input type="email" placeholder="E-MAIL" />
											</div>
										</div>

										<div class="col-xs-3">
											<div class="row">
												<button type="submit">Sign In</button>
											</div>
										</div>
									</form> -->
									<?php echo do_shortcode('[mc4wp_form id="477"]'); ?>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-4 col-md-offset-2 col-sm-offset-2 footer-social">
						<div class="row">
							<label>Social Media</label>

							<a href="<?php the_field('facebook' , 'options'); ?>" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
							<a href="<?php the_field('twitter' , 'options'); ?>" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							<a href="<?php the_field('instagram' , 'options'); ?>" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
							<a href="<?php the_field('tumblr' , 'options'); ?>" target="_blank"><i class="fa fa-tumblr" aria-hidden="true"></i></a>
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
										<li><a href="<?php echo home_url(); ?>/about-us">Our Legacy</a></li>
										<li><a href="<?php echo home_url(); ?>/events">Philanthropy</a></li>
										<li><a href="<?php echo home_url(); ?>/product-category/jewellery">Product Line</a></li>
										<!-- <li><a href="<?php echo home_url(); ?>/blog">News</a></li> -->
									</ul>
								</div>
							</div>

							<div class="col-md-3 col-sm-6">
								<div class="row">
									<h3>Shop Now <span class="glyphicon glyphicon-plus"></span></h3>
									<ul>
										<li><a href="<?php echo home_url(); ?>/product-category/jewellery/bangles">Bangles</a></li>
										<li><a href="<?php echo home_url(); ?>/product-category/jewellery/earrings">Earrings</a></li>
										<li><a href="<?php echo home_url(); ?>/product-category/jewellery/necklaces">Necklaces</a></li>
										<li><a href="<?php echo home_url(); ?>/collections">Our Collections</a></li>
									</ul>
								</div>
							</div>

							<div class="col-md-3 col-sm-6">
								<div class="row">
									<h3>My Account <span class="glyphicon glyphicon-plus"></span></h3>
									<ul>
										<li><a href="<?php echo home_url(); ?>/my-account">Sign In / Sign Up</a></li>
										<!-- <li><a href="#">Privacy Policy</a></li> -->
										<li><a href="#" data-toggle="modal" data-target="#snrModal">Shipping &amp; Returns</a></li>
									</ul>
								</div>
							</div>

							<div class="col-md-3 col-sm-6 locator">
								<div class="row">
									<a href="<?php echo home_url(); ?>/store-locator">Store Locator</a>
									<ul>
										<li><a href="#" data-toggle="modal" data-target="#contactForm">Contact via Email</a></li>
										<li><a href="#" data-toggle="modal" data-target="#appointmentForm">Make an Appointment</a></li>
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

	<!-- Appointment Modal -->
	<div class="modal fade" id="appointmentForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Make an Appointment</h4>
				</div>
				<div class="modal-body">
					<?php echo do_shortcode('[contact-form-7 id="107" title="Make an Appointment"]'); ?>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact Modal -->
	<div class="modal fade" id="contactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Contact Us</h4>
				</div>
				<div class="modal-body">
					<?php echo do_shortcode('[contact-form-7 id="408" title="Contact"]'); ?>
				</div>
			</div>
		</div>
	</div>

	<!-- Shipping & Returns Modal -->
	<div class="modal fade" id="snrModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Shipping &amp; Returns</h4>
				</div>
				<div class="modal-body">
					<h5>Shipping</h5>

					<p>We will be shipping to all of USA, UK, Singapore, U.A.E & Qatar.</p>
					<p>Shipping charges - All orders of value US$ 20,000/- and above will be shipped without any additional cost. For all orders below US$ 20,000/- there will be a shipping charge of US$ 500.</p>
					<p>Delivery – All orders will be insured until the point of delivery. Delivery time for gold jewellery will be 3 weeks and for diamond and jadau jewellery it will be 5 weeks.</p>

					<h5>Returns</h5>
					<p>For all orders, there will be full exchange until 30 days of purchase.</p>
					<p>Gold Jewellery – After 30 days, the exchange value would be the weight of the product into the current gold price.</p>
					<p>Diamond & Jadau Jewellery – After 30 days, the exchange value is at 80% of current value of the product.</p>
				</div>
			</div>
		</div>
	</div>

<?php if(is_page('453')) : ?>
	<!-- <script type='text/javascript' src='https://maps.google.com/maps/api/js?sensor=false&ver=4.2.7'></script> -->
	<script type="text/javascript">
		var $ = jQuery.noConflict();

		var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";
		var xhr;
		var map;
		var markers = [];

		<?php 
		$args = array(
		    'posts_per_page'   => -1,
		    'post_type'        => 'store',
		);
		$stores = get_posts($args);
		echo 'var allMarkers = ['; 
		if($stores){
		    foreach ($stores as $s) {
		        if($location = rwmb_meta('location' , array(), $s->ID)){
		            // $location = strip_tags($location);
		            $location = get_post_meta( $s->ID, 'location', false );
		            $location = substr($location[0], 0, strrpos($location[0], ","));
		            // var_dump($location);
		            $content = str_replace(array("\r\n", "\n", "\r"), '<br/>', $s->post_content);
		            $content1 = strip_tags(get_the_term_list( $s->ID, 'country-state', '', ',', '' ));
		            $content2  =  htmlentities($content);
		            echo '[';
		            echo "'$s->post_title', $location , '$content1' , '$content2'";
		            echo '],';
		        }
		        
		    }
		}
		echo ']';
		?>

		function initializeMaps() {

		    var myOptions = {
		        mapTypeId: google.maps.MapTypeId.ROADMAP,
		        mapTypeControl: false,
		        minZoom: 1,
		        styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"labels.icon","stylers":[{"visibility":"on"}]},{"featureType":"transit.station","elementType":"labels.icon","stylers":[{"visibility":"on"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#616161"},{"visibility":"on"}]}]
		    };
		    map = new google.maps.Map(document.getElementById("map_canvas"),myOptions);
		    
		    addMarkers(allMarkers);
		 
		}
		function addMarkers(m, trigger = false){
		    var infowindow = new google.maps.InfoWindow(); 
		    var marker, i;
		    var bounds = new google.maps.LatLngBounds();

		    var pinColor = "b5985a";
	        var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
	            new google.maps.Size(21, 34),
	            new google.maps.Point(0,0),
	            new google.maps.Point(10, 34));
	        var pinShadow = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
	            new google.maps.Size(40, 37),
	            new google.maps.Point(0, 0),
	            new google.maps.Point(12, 35));

		    for (i = 0; i < m.length; i++) { 
		        var pos = new google.maps.LatLng(m[i][1], m[i][2]);
		        bounds.extend(pos);
		        marker = new google.maps.Marker({
		            position: pos,
		            map: map,
		            icon: pinImage
		            // icon: '<?=get_template_directory_uri()?>/assets/images/map-marker.png'
		        });
		        (function(marker){
		            google.maps.event.addDomListener($('<li/>').html( '<h2>' + m[i][0] + '</h2>' + html_entity_decode(m[i][3]) ).appendTo('#list')[0],'click',function(){
		                google.maps.event.trigger(marker,'click',{});
		                //var latLng = marker.getPosition();
		                //var newBounds = new google.maps.LatLngBounds();
		                //newBounds.extend(latLng);
		                //map.fitBounds(newBounds);
		            });
		        })(marker);
		        google.maps.event.addListener(marker, 'click', (function(marker, i) {
		            return function() {
		                infowindow.setContent('<h2>' + m[i][0] + '</h2>' + html_entity_decode(m[i][4]) + '<br/>' + m[i][3] );
		                infowindow.open(map, marker);
		                map.setZoom(16);
		                var latLng = marker.getPosition();
		                map.setCenter(latLng);
		            }
		        })(marker, i));
		        markers.push(marker);
		    }
		    if(!trigger) {
		    	map.fitBounds(bounds);
	    	}
		}
		function deleteMarkers() {
		    for (var i = 0; i < markers.length; i++) {
		        markers[i].setMap(null);
		    }
		    markers = [];
		};
		function showAroundMe() {
		    if (navigator.geolocation) {
		        navigator.geolocation.getCurrentPosition(navigate);
		    }
		}
		function navigate(position){
		    deleteMarkers();
		    $('#list').html('');
		    addMarkers(allMarkers);
		    map.setCenter(new google.maps.LatLng(position.coords.latitude , position.coords.longitude));
		    map.setZoom(14);
		}
		function searchStore(){
		    var search = $('#search-store').val();
		    var searchBtn = $('#search-button');
		    var searchBtnVal = searchBtn.html();
		    searchBtn.html('Searching..');
		    if(search){
		        if(xhr)
		            xhr.abort();
		        xhr = $.ajax({
		                type: "POST",
		                url: ajaxurl,
		                data: "action=store_search&s="+ search,
		                success: function(msg){
		                    getMarkers = JSON.parse(msg);
		                    $('#list').html('');
		                    deleteMarkers();
		                    if(getMarkers.length > 0){
		                        addMarkers(getMarkers, true);
		                    }
		                    else{
		                        $('#list').html('No stores found.');
		                    }
		                    searchBtn.html(searchBtnVal);
		                }
		            });
		    }    
		}
		function html_entity_decode(str) {             
		    if(str) // check str is empty or not.                 
		        return $("<div />").html(str).text();             
		    else                 
		        return '';         
		}
		function hideMap(){
		    $('#store-map').slideUp('slow');
		    $('#store-list').slideDown('slow');
		}
		function showMap(){
		    $('#store-list').slideUp('slow');
		    $('#store-map').slideDown('slow');
		}
		initializeMaps();
		$('#search-store').keypress(function(e) {
		    if(e.which == 13) {
		        searchStore();
		    }
		});
	</script>
<?php endif; ?>

<?php wp_footer(); ?>

</body>
</html>
