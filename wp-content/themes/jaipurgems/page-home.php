<?php
/**
 * The template for displaying home page
 *
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<section class="banner">
	<?php if( have_rows('home_slides') ): ?>
		<div class="home-slides">
			<?php while ( have_rows('home_slides') ) : the_row(); ?>
				<div class="home-slide">
					<?php $sub_image = get_sub_field('image'); ?>
					<img src="<?php echo $sub_image['url']; ?>" alt="<?php echo $sub_image['alt']; ?>" />
					<h1><?php the_sub_field('text'); ?></h1>
				</div>
			<?php endwhile; ?>
		</div>
	<?php endif; ?>
</section>

<section class="expertise">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="row">
					<?php $craftsmanship_image = get_field('craftsmanship_image'); ?>
					<img class="img-responsive" src="<?php echo $craftsmanship_image['url']; ?>" alt="<?php echo $craftsmanship_image['alt']; ?>" />
				</div>
			</div>

			<div class="col-md-6 col-sm-6">
				<div class="craftsmanship-content">
					<?php if(get_field('craftsmanship_header')) : ?>
						<h1><?php the_field('craftsmanship_header'); ?></h1>
					<?php endif; ?>

					<?php if(get_field('craftsmanship_text')) : ?>
						<p><?php the_field('craftsmanship_text'); ?></p>
					<?php endif; ?>
					<a class="tile-link" href="<?php the_field('craftsmanship_link'); ?>"><?php the_field('craftsmanship_link_text'); ?></a>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="collections-home">
	<div class="container">
		<div class="row">
			<div class="necklaces-tile">
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="row">
					<?php $cs_left_image = get_field('cs_left_image'); ?>
						<img class="img-responsive" src="<?php echo $cs_left_image['url']; ?>" alt="<?php echo $cs_left_image['alt']; ?>" />
						<div class="necklaces-content">
							<h1><?php the_field('cs_left_heading'); ?></h1>
							<a class="tile-link" href="<?php the_field('cs_left_link'); ?>"><?php the_field('cs_left_link_text'); ?></a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-sm-6 col-xs-6 collections-right">
				<div class="earrings-tile collections-right-tile">
					<?php $cs_right_top_image = get_field('cs_right_top_image'); ?>
					<img class="img-responsive" src="<?php echo $cs_right_top_image['url']; ?>" alt="<?php echo $cs_right_top_image['alt']; ?>" />
					<div class="earrings-content">
						<h1><?php the_field('cs_right_top_heading'); ?></h1>
						<a class="tile-link" href="<?php the_field('cs_right_top_link'); ?>"><?php the_field('cs_right_top_link_text'); ?></a>
					</div>
				</div>

				<div class="bangles-tile collections-right-tile">
					<?php $cs_right_bottom_image = get_field('cs_right_bottom_image'); ?>
					<img class="img-responsive" src="<?php echo $cs_right_bottom_image['url']; ?>" alt="<?php echo $cs_right_bottom_image['alt']; ?>" />
					<div class="bangles-content">
						<h1><?php the_field('cs_right_bottom_heading'); ?></h1>
						<a class="tile-link" href="<?php the_field('cs_right_bottom_link'); ?>"><?php the_field('cs_right_bottom_link_text'); ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="gems-home">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4">
				<div class="row">
					<div class="gems-tile">
						<?php $left_sm = get_field('4t_left_small_image'); ?>
						<img class="img-responsive" src="<?php echo $left_sm['url']; ?>" alt="<?php echo $left_sm['alt']; ?>" />
						<div class="gems-content">
							<h1><?php the_field('4t_left_small_heading'); ?></h1>
							<a class="tile-link" href="<?php the_field('4t_left_small_link'); ?>"><?php the_field('4t_left_small_link_text'); ?></a>
						</div>
					</div>

					<div class="iconic-tile">
						<?php $left_long = get_field('4t_left_long_image'); ?>
						<img class="img-responsive" src="<?php echo $left_long['url']; ?>" alt="<?php echo $left_long['alt']; ?>" />
						<div class="iconic-content">
							<h1><?php the_field('4t_left_long_heading'); ?></h1>
							<a class="tile-link" href="<?php the_field('4t_left_long_link'); ?>"><?php the_field('4t_left_long_link_text'); ?></a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-8 col-sm-8 gems-right">
				<div class="diamonds-tile">
					<?php $right_top = get_field('4t_right_top_image'); ?>
					<img class="img-responsive" src="<?php echo $right_top['url']; ?>" alt="<?php echo $right_top['alt']; ?>" />
					<div class="diamonds-content">
						<h1><?php the_field('4t_right_top_heading'); ?></h1>
						<a class="tile-link" href="<?php the_field('4t_right_top_link'); ?>"><?php the_field('4t_right_top_link_text'); ?></a>
					</div>
				</div>

				<div class="rajputana-tile">
					<?php $right_bottom = get_field('4t_right_bottom_image'); ?>
					<img class="img-responsive" src="<?php echo $right_bottom['url']; ?>" alt="<?php echo $right_bottom['alt']; ?>" />
					<div class="rajputana-content">
						<h1><?php the_field('4t_right_bottom_heading'); ?></h1>
						<a class="tile-link" href="<?php the_field('4t_right_bottom_link'); ?>"><?php the_field('4t_right_bottom_link_text'); ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="princess">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="princess-tile">
					<?php $left_img = get_field('2t_left_image'); ?>
					<img class="img-responsive" src="<?php echo $left_img['url']; ?>" alt="<?php echo $left_img['alt']; ?>" />
					<div class="princess-content">
						<h1><?php the_field('2t_left_heading'); ?></h1>
						<a class="tile-link" href="<?php the_field('2t_left_link'); ?>"><?php the_field('2t_left_link_text'); ?></a>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-sm-6">
				<div class="history-tile">
					<?php $right_img = get_field('2t_right_image'); ?>
					<img class="img-responsive" src="<?php echo $right_img['url']; ?>" alt="<?php echo $right_img['alt']; ?>" />
					<div class="princess-content">
						<h1><?php the_field('2t_right_heading'); ?></h1>
						<a class="tile-link" href="<?php the_field('2t_right_link'); ?>"><?php the_field('2t_right_link_text'); ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="find-jewellery">
	<div class="container">
		<div class="row">
			<?php $img = get_field('1t_image'); ?>
			<img class="img-responsive perfect-jewellery" src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" />
			<h1><?php the_field('1t_heading'); ?></h1>
			<h4><?php the_field('1t_text'); ?></h4>
			<a class="tile-link" href="" data-toggle="modal" data-target="#appointmentForm"><?php the_field('1t_link_text'); ?></a>
		</div>
	</div>
</section>

<?php get_footer(); ?>
