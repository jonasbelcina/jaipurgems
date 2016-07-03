<?php
/**
 * Template name: Cookie Policy
 *
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<?php
// Start the loop.
while ( have_posts() ) : the_post();

	the_content();

	// End of the loop.
endwhile;
?>

<?php get_footer(); ?>
