<?php get_header(); ?>

<div class="store-map" id="store-map">
    <div class="map-list">
        <div class="inner">
            <h1>Locate a store</h1>
            <div class="search">
                <input type="text" name="search" placeholder="Search" id="search-store">
                <button class="more-button" onclick="searchStore();" id="search-button">Search</button>
                <div class="clr"></div>
            </div> 
            <div class="show-around">
                <!-- <a class="more-button" onclick="showAroundMe();">Show around me</a> --> <a class="more-button" onclick="hideMap();">Hide map</a>
            </div>
            <h1>Our Stores</h1>
            <div class="results" id="list">
            </div>
        </div>
    </div>
    <div class="map" id="map_canvas">
    </div>
    <div class="clr"></div>
</div>
<div class="main-container" id="store-list" style="display:none;">
  <div class="content-2 pages">
        <main id="main" class="site-main" role="main">

            <?php while ( have_posts() ) : the_post(); ?>

                <div class="page">

                    <h1>All Stores</h1>
                    <hr />
                    <div class="show-around">
                        <a class="more-button" onclick="showMap();">Show map</a>
                    </div>

                    <?php the_content(); ?>

                    <div class="clr"></div>
                </div>

            <?php endwhile; // end of the loop. ?>

        </main><!-- #main -->
    </div>
</div>
<script type='text/javascript' src='https://maps.google.com/maps/api/js?sensor=false&ver=4.2.7'></script>
<script type="text/javascript">
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
            $location = strip_tags($location);
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
function addMarkers(m){
    var infowindow = new google.maps.InfoWindow(); 
    var marker, i;
    var bounds = new google.maps.LatLngBounds();

    for (i = 0; i < m.length; i++) { 
        var pos = new google.maps.LatLng(m[i][1], m[i][2]);
        bounds.extend(pos);
        marker = new google.maps.Marker({
            position: pos,
            map: map,
            icon: '<?=get_template_directory_uri()?>/images/map-marker.png'
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
    map.fitBounds(bounds);
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
                        addMarkers(getMarkers);
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

