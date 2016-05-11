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
	<?php $categories = strip_tags(get_the_category_list() , '<li><a>');?>
	<ul>
		<?php echo $categories; ?>
		<li><?php the_time('F d, Y'); ?></li>
	</ul>
	<h2><?php the_title(); ?></h2>
	
	<?php $link = get_permalink();?>
	<div class="share">
		<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink(); ?>" onclick="return popitup('https://www.facebook.com/sharer/sharer.php?u=<?php echo $link; ?>')" target="_blank"><img src="<?=get_template_directory_uri()?>/assets/images/icon-fb.png"></a>
		<a target="_blank" href="https://twitter.com/home?status=<?php echo shortenText(get_the_content(), 110, '...'); ?> <?php echo $link; ?>" onclick="return popitup('https://twitter.com/home?status=<?php echo shortenText(get_the_content(), 110, '...'); ?> <?php echo $link; ?>');"><img src="<?=get_template_directory_uri()?>/assets/images/icon-twitter.png"></a>
		<a target="_blank" href="https://plus.google.com/share?url=<?php echo $link;?>"  onclick="return popitup('https://plus.google.com/share?url=<?php echo $link;?>')"><img src="<?=get_template_directory_uri()?>/assets/images/icon-g-plus.png"></a>
		<a href="#" onclick="window.print()"><img src="<?=get_template_directory_uri()?>/assets/images/icon-print.png"></a>
		<a href="mailto:?&subject=<?php the_title();?>&body=<?php echo shortenText(get_the_content(), 110, '...');?><?php echo $link;?>"><img src="<?=get_template_directory_uri()?>/assets/images/icon-email.png"></a>
	</div>

	<?php the_post_thumbnail('full');?>

	<?php the_content(); ?>

	<?php disqus_embed(' palmonfoundation '); ?>

	<div class="blogs-nav single-blogs-nav">
		<?php 
			$previous = get_previous_post();
			$next = get_next_post();
			if($next)
				echo '<a href = "'.$next->guid.'" class="blogs-next">Next Post</a>';
			if($previous)
				echo '<a href = "'.$previous->guid.'" class="blogs-prev">Previous Post</a>';
			
		?>
		<a href="<?php echo home_url(); ?>/blog">Back to Blogs</a>
	</div>
</div>
