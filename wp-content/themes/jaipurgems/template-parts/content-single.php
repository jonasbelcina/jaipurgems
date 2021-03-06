<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<div class="blog-content single-blog" itemscope="" itemtype="http://schema.org/BlogPosting">
	<?php 
		if(get_post_type() != 'events') {
			the_post_thumbnail('full');
		}
	?>

	<h2><?php the_title(); ?></h2>

	<?php $categories = strip_tags(get_the_category_list() , '<li><a>');?>
	<ul>
		<?php echo $categories; ?>
		<li><?php the_time('F d, Y'); ?></li>
	</ul>
	
	<?php $link = get_permalink();?>

	<div class="content <?php if(get_post_type() == 'events') echo 'single-event'; ?>">
		<?php 
			the_content();

			if(get_post_type() == 'events') { ?>
				<div class="event-holder">
					<?php $images = get_field('gallery');
					if( $images ): ?>
						<a class="open-popup event-popup" href="#campaign_<?php echo $post->ID; ?>">
							<?php the_post_thumbnail('full'); ?>
							<div class="overlay">
								<h2>View Gallery</h2>
							</div>
						</a>

						<div style="display:none">
							<div class="popup" id="campaign_<?php echo $post->ID; ?>">
								<div class="popup-content">
									<div class="event-gallery">
								        <?php foreach( $images as $image ):
								        	if($image['caption'] !== '') :
								        		echo $image['caption'];
								        	else : ?>
					                     		<img class="gallery-item" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
				                     		<?php endif; ?>
								        <?php endforeach; ?>
							        </div>
						        </div>
					        </div>
				        </div>
					<?php endif; ?>
				</div>
			<?php } ?>
	</div>

	<?php disqus_embed(' jaipurgems '); ?>

	<div class="single-blogs-nav">
		<?php 
			$previous = get_previous_post();
			$next = get_next_post();

			$post_type = '';

			if(get_post_type() == 'events') {
				$post_type = 'Event';
			}else {
				$post_type = 'Post';
			}
		?>
			<ul>
			<?php
			if($previous)
				echo '<li><a href = "'.$previous->guid.'" class="blogs-prev">Previous ' .$post_type .'</a></li>';

			if($next)
				echo '<li><a href = "'.$next->guid.'" class="blogs-next">Next ' .$post_type .'</a></li>';
			?>
			</ul>
		
		<?php if(get_post_type() == 'events') : ?>
			<a href="<?php echo home_url(); ?>/events">Back to Events</a>
		<?php else : ?>
			<a href="<?php echo home_url(); ?>/blog">Back to Blogs</a>
		<?php endif; ?>

	</div>
</div>
