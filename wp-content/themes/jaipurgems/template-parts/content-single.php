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
	<?php the_post_thumbnail('full'); ?>

	<h2><?php the_title(); ?></h2>

	<?php $categories = strip_tags(get_the_category_list() , '<li><a>');?>
	<ul>
		<?php echo $categories; ?>
		<li><?php the_time('F d, Y'); ?></li>
	</ul>
	
	<?php $link = get_permalink();?>

	<div class="content">
		<?php the_content(); ?>
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
