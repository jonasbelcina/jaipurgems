<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

	<div class="container">
		<div class="row">

			<div class="col-lg-9 col-md-9 col-sm-12 blogs">
				<div class="blog-title">
					<h1>Recent <?php echo (get_post_type() == 'events') ? 'Events' : 'Blogs'; ?></h1>
					<h2>Place for subtitle</h2>
				</div>

				<?php if ( have_posts() ) : ?>
				<div class="blog-holder">

					<?php
					// Start the loop.
					while ( have_posts() ) : the_post();

						/*
						 * Include the Post-Format-specific template for the content.
						 * If you want to override this in a child theme, then include a file
						 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
						 */
						get_template_part( 'template-parts/content', get_post_format() );

					// End the loop.
					endwhile;

					// // Previous/next page navigation.
					// the_posts_pagination( array(
					// 	'prev_text'          => __( 'Previous page', 'twentysixteen' ),
					// 	'next_text'          => __( 'Next page', 'twentysixteen' ),
					// 	'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentysixteen' ) . ' </span>',
					// ) );

					?>

				<?php
				// If no content, include the "No posts found" template.
				else :
					get_template_part( 'template-parts/content', 'none' );

				endif;
				?>
				</div>

				<div class="clearfix"></div>
				<div class="blogs-nav">
					<?php

						if(!is_null(get_previous_posts_link()) || !is_null(get_next_posts_link())) {
							echo '<ul>';
						}

							$previous = explode('"',get_previous_posts_link()); 
							if(!is_null(get_previous_posts_link())) {
								$previous = $previous[1];

								if ($previous) {
								    echo '<li><a href="' . $previous . '" class="blogs-prev">Previous</a></li>';
								}
							}

							$next = explode('"',get_next_posts_link());
							if(!is_null(get_next_posts_link())) {
								$next = $next[1];

								if ($next) {
								    echo '<li><a href="' . $next . '" class="blogs-next">Next</a></li>';
								}
							}

						if(!is_null(get_previous_posts_link()) || !is_null(get_next_posts_link())) {
							echo '</ul>';
						}
						
					?>
				</div>

			</div>

			<?php get_sidebar('blog'); ?>

		</div>
	</div>

<?php get_footer(); ?>
