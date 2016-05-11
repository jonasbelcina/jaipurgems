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
			<nav class="breadcrumbs">
				<a href="<?php echo home_url(); ?>">Home</a>
				<span>Blogs</span>
			</nav>
		</div>
	</div>

	<div class="featured-blogs">
		<div class="container">
			<div class="row">
				<?php
					$args = array(
						'posts_per_page'      => 2,
						'post__in'            => get_option( 'sticky_posts' ),
						'ignore_sticky_posts' => 1,
						// 'order'				  => 'ASC'
					);
					$query = new WP_Query($args);

					if( $query->have_posts() ): ?>
							<?php
							$ctr == 1;
							while( $query->have_posts() ) : $query->the_post(); ?>
								<div class="<?php if($ctr == 1) { ?>col-lg-4 col-md-4 col-sm-4<?php } else { ?>col-lg-8 col-md-8 col-sm-8<?php } ?> featured-blog">
									<?php the_post_thumbnail('full');?>
									<div class="blog-content">
										<?php $categories = strip_tags(get_the_category_list() , '<li><a>');?>
										<ul>
											<?php echo $categories; ?>
											<li><?php the_time('F d, Y'); ?></li>
										</ul>
										<h2><?php the_title(); ?></h2>
										<?php echo wpautop(shortenText(wpautop(get_the_content()), 175, '')); ?>
										<div class="buttons">
											<a href="<?php the_permalink(); ?>">Read Post</a>
											<a href="#" class="share">Share</a>
										</div>
									</div>
								</div>
								<?php
								$ctr++;
							endwhile; ?>
					<?php
					endif;

					wp_reset_postdata();
				?>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">

			<div class="col-lg-9 col-md-9 col-sm-9 blogs">
				<?php if ( is_home() && ! is_front_page() ) : ?>
					<h1>Recent Blogs</h1>
				<?php endif; ?>

				<?php if ( have_posts() ) : ?>

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

					<div class="blogs-nav">
						<?php
							$next = explode('"',get_next_posts_link());
							$next = $next[1];
							$previous = explode('"',get_previous_posts_link()); 
							$previous = $previous[1];

							if ($previous) {
							    echo '<a href="' . $previous . '" class="blogs-prev">Previous page</a>';
							}

							if ($next) {
							    echo '<a href="' . $next . '" class="blogs-next">Next page</a>';
							}
						?>
					</div>

				<?php
				// If no content, include the "No posts found" template.
				else :
					get_template_part( 'template-parts/content', 'none' );

				endif;
				?>
			</div>

			<?php get_sidebar('blog'); ?>

		</div>
	</div>

<?php get_footer(); ?>
