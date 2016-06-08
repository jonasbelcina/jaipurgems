<?php
/**
 * The template part for displaying content
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<div class="col-md-6 col-sm-6 blog-item">
	<div class="blog-img">
		<a href="<?php the_permalink(); ?>">
			<?php the_post_thumbnail();?>
		</a>
	</div>
	<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
	<?php $categories = strip_tags(get_the_category_list() , '<li><a>');?>
	<ul>
		<?php echo $categories; ?>
		<li><?php the_time('F d, Y'); ?></li>
	</ul>
	<?php echo wpautop(shortenText(wpautop(get_the_content()), 170, ' [...]')); ?>
	<div class="blog-button">
		<a href="<?php the_permalink(); ?>"><?php echo (get_post_type() == 'events') ? 'View Event' : 'Read More'; ?></a>
	</div>
</div>










