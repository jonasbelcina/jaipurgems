<?php
/**
 * The template for displaying archive pages
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each one. For example, tag.php (Tag archives),
 * category.php (Category archives), author.php (Author archives), etc.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<div class="container">
	<div class="campaigns">

		<?php if ( have_posts() ) : ?>

			<h1 class="about-section-header">Campaigns</h1>
				<div class="campaign-holder">
				<?php
				// Start the Loop.
				while ( have_posts() ) : the_post();

					/*
					 * Include the Post-Format-specific template for the content.
					 * If you want to override this in a child theme, then include a file
					 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
					 */
					// get_template_part( 'template-parts/content', get_post_format() );
					?>

					<div class="single-campaign">
						<?php $images = get_field('gallery', get_the_ID());
						if( $images ): ?>
							<a class="open-popup campaign-popup" href="#campaign_<?php echo $post->ID; ?>">
								<?php the_post_thumbnail('full'); ?>
								<div class="overlay">
									<h2><?php the_title(); ?><span><?php the_field('year', get_the_ID()) ?></span></h2>
								</div>
							</a>

							<div style="display:none">
								<div class="popup" id="campaign_<?php echo $post->ID; ?>">
									<div class="popup-content">
										<div class="campaign-gallery">
									        <?php foreach( $images as $image ): ?>
						                     	<img class="gallery-item" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
									        <?php endforeach; ?>
								        </div>
							        </div>
						        </div>
					        </div>
						<?php endif; ?>
					</div>


				<?php // End the loop.
				endwhile;

			// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Previous page', 'twentysixteen' ),
				'next_text'          => __( 'Next page', 'twentysixteen' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentysixteen' ) . ' </span>',
			) );

			// If no content, include the "No posts found" template.
			else :
				get_template_part( 'template-parts/content', 'none' );

			endif;
			?>
		</div>
	</div>
</div>


<?php get_footer(); ?>
