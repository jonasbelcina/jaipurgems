<?php get_header(); ?>

<div class="store-map" id="store-map">
    <div class="map-list">
        <div class="inner">
            <h1>Locate a store</h1>
            <div class="search">
                <input type="text" name="search" placeholder="Search" id="search-store">
                <button class="more-button" onclick="searchStore();" id="search-button">Search</button>
                <div class="clearfix"></div>
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
<div class="container" id="store-list" style="display:none;">
  <div class="content-2 pages">
        <main id="main" class="site-main" role="main">

            <?php while ( have_posts() ) : the_post(); ?>

                <div class="page">
                    <div class="all-stores">
                        <h1 class="cart-title">All Stores</h1>
                        <hr />
                        <div class="show-around">
                            <a class="more-button" onclick="showMap();">Show map</a>
                        </div>

                        <?php the_content(); ?>

                        <div class="clearfix"></div>
                    </div>
                </div>

            <?php endwhile; // end of the loop. ?>

        </main><!-- #main -->
    </div>
</div>

<?php get_footer(); ?>

