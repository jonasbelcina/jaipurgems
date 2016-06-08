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

	<div class="content">
		<?php 
			the_content();

			if(get_post_type() == 'events') {
				$images = get_field('gallery');
				if( $images ): ?>
					<a class="open-popup" href="#campaign_<?php echo $post->ID; ?>">
						<?php the_post_thumbnail('full'); ?>
					</a>

					<div style="display:none">
						<div class="popup" id="campaign_<?php echo $post->ID; ?>">
							<div class="popup-content">
								<div class="event-gallery">
							        <?php foreach( $images as $image ): ?>
				                     	<img class="gallery-item" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
							        <?php endforeach; ?>
						        </div>
					        </div>
				        </div>
			        </div>
				<?php endif;
			} ?>
	</div>

	<?php disqus_embed(' palmonfoundation '); ?>

	<div class="single-blogs-nav">
		<?php 
			$previous = get_previous_post();
			$next = get_next_post();
		?>
			<ul>
			<?php
			if($previous)
				echo '<li><a href = "'.$previous->guid.'" class="blogs-prev">Previous Post</a></li>';

			if($next)
				echo '<li><a href = "'.$next->guid.'" class="blogs-next">Next Post</a></li>';
			?>
			</ul>
			
		<a href="<?php echo home_url(); ?>/blog">Back to Blogs</a>
	</div>
</div>
