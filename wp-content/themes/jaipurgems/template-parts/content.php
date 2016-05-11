<?php
/**
 * The template part for displaying content
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<div class="blog-item">
	<div class="col-md-6 col-sm-6">
		<div class="row">
			<div class="blog-img">
				<?php the_post_thumbnail('full');?>
			</div>
		</div>
	</div>
		
	<div class="col-md-6 col-sm-6">
		<div class="row">
			<div class="blog-content">
				<?php $categories = strip_tags(get_the_category_list() , '<li><a>');?>
				<ul>
					<?php echo $categories; ?>
					<li><?php the_time('F d, Y'); ?></li>
				</ul>
				<h2><?php the_title(); ?></h2>
				<?php echo wpautop(shortenText(wpautop(get_the_content()), 190, ' [...]')); ?>
				<div class="buttons">
					<a href="<?php the_permalink(); ?>">Read Post</a>
					<a href="#" class="share">Share</a>
				</div>
			</div>
		</div>
	</div>

</div>
