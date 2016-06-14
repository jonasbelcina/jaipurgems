<?php
/**
 * Template name: About Us
 *
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<div class="container">
	<div class="row">
		<nav class="about-nav">
			<ul>
				<li><a class="smooth" href="#house">The House</a></li>
				<li><a class="smooth" href="#history">History &amp; Heritage</a></li>
				<li><a class="smooth" href="#expertise">Our Expertise</a></li>
				<li><a class="smooth" href="#philantrophy">Philantrophy</a></li>
				<li><a class="smooth" href="#product-line">Product Line</a></li>
			</ul>
		</nav>
	</div>
</div>

<?php $banner_img = get_field('about_banner_background_image'); ?>
<section class="house-jaipur" id="house">
	<div class="container" style="background: url(<?php echo $banner_img['url']; ?>) center no-repeat;">
		<h2><?php the_field('about_banner_heading'); ?></h2>
		<h3><?php the_field('about_banner_heading_2'); ?></h3>
		<?php echo wpautop(get_field('about_banner_content')); ?>
	</div>
</section>

<section class="owner">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<h2 class="about-section-header"><?php the_field('about_owner_heading'); ?></h2>
				<div class="row">
					<?php $owner_img = get_field('about_owner_image'); ?>
					<img class="img-responsive" src="<?php echo $owner_img['url']; ?>" />
				</div>
			</div>

			<div class="col-md-6 col-sm-6">
				<h2 class="about-section-header"><?php the_field('about_philosophy_heading'); ?></h2>
				<p><?php the_field('about_philosophy_content'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="heritage" id="history">
	<div class="container">
		<h2 class="about-section-header"><?php the_field('about_history_heading'); ?></h2>
		<h3><?php the_field('about_history_subheading'); ?></h3>
		<div class="row">
			<div class="history-wrap">
				<?php if( have_rows('timeline') ): ?>
					<div class="history-slider">
						<?php while ( have_rows('timeline') ) : the_row(); ?>
							<div class="history-item">
								<h4><?php the_sub_field('year'); ?> - <?php the_sub_field('heading'); ?></h4>
								<div class="content">
									<?php $timeline_img = get_sub_field('image');
										if($timeline_img) : ?>
											<img src="<?php echo $timeline_img['url']; ?>" />
										<?php endif; ?>
									<?php echo wpautop(get_sub_field('content')); ?>
								</div>
								<div class="content-year">
									<?php the_sub_field('year'); ?>
								</div>
							</div>
						<?php endwhile; ?>
					</div>
				<?php endif; ?>

				<div class="custom-nav">
					<div class="custom-prev"></div>
					<div class="custom-next"></div>
				</div>
			</div>

			<div class="history-year">
				<?php if( have_rows('timeline') ): $ctr = 1; ?>
					<?php while ( have_rows('timeline') ) : the_row(); ?>
						<div class="<?php if($ctr == 1) { ?>current<?php } ?>"><span><?php the_sub_field('year'); ?></span></div>
						<?php $ctr++; ?>
					<?php endwhile; ?>
				<?php endif; ?>
			</div>
		</div>
	</div>
</section>

<section class="about-expertise" id="expertise">
	<div class="container">
		<h2 class="about-section-header"><?php the_field('about_expertise_heading'); ?></h2>
		<?php if( have_rows('expertise') ): ?>
			<div class='about-expertise-slider'>
				<?php while ( have_rows('expertise') ) : the_row(); ?>
					<div class="about-expertise-slide">
						<?php $expertise_img = get_sub_field('image'); ?>
						<img src="<?php echo $expertise_img['url']; ?>" alt="<?php echo $expertise_img['alt']; ?>" />
						<div class="about-expertise-content">
							<h3><?php the_sub_field('heading'); ?></h3>
							<p><?php the_sub_field('content'); ?></p>
						</div>
					</div>
				<?php endwhile; ?>
			</div>
		<?php endif; ?>
	</div>
</section>

<section class="philantrophy" id="philantrophy">
	<div class="container">
		<h2 class="about-section-header"><?php the_field('philantrophy_heading'); ?></h2>
		<h3><?php the_field('philantrophy_subheading'); ?></h3>
		<div class="row">
		<?php
			$args = array(
						'post_type' 		=> 'events',
						'posts_per_page' 	=> 8
					);

			$query = new WP_Query( $args );
			if( $query->have_posts() ):
				while( $query->have_posts() ) : $query->the_post(); ?>
					<div class="col-md-3 col-sm-3 col-xs-3 ph-tile">
						<div class="row">
							<?php the_post_thumbnail('full'); ?>
							<div class="content">
								<p><?php the_title(); ?></p>
								<a href="<?php the_permalink(); ?>">View Gallery</a>
							</div>
						</div>
					</div>
				<?php endwhile;
			endif;
			wp_reset_postdata();
		?>
		</div>
	</div>
</section>

<section class="product-line" id="product-line">
	<div class="container">
		<h2 class="about-section-header"><?php the_field('product_line_heading'); ?></h2>
		<div class="row">
			<div class="desktop-product-line">
				<div class="col-md-3">
					<div class="row">
						<?php if( have_rows('product_line') ): $ctr = 1; ?>
							<ul class="nav nav-tabs" role="tablist">
								<?php while ( have_rows('product_line') ) : the_row(); ?>
									<li role="presentation" <?php if($ctr == 1) { ?>class="active"<?php } ?>><a href="#tab<?php echo $ctr; ?>" role="tab" data-toggle="tab"><?php the_sub_field('heading'); ?></a></li>
								<?php $ctr++; 
								endwhile; ?>
							</ul>
						<?php endif; ?>
					</div>
				</div>

				<div class="col-md-9">
					<div class="row">
						<?php if( have_rows('product_line') ): $ctr = 1; ?>
							<div class="tab-content">
								<?php while ( have_rows('product_line') ) : the_row(); ?>
									<div role="tabpanel" class="tab-pane fade in <?php if($ctr == 1) { ?>active<?php  }?>" id="tab<?php echo $ctr; ?>">
										<div class="col-xs-7">
											<?php echo wpautop(get_sub_field('content')); ?>
										</div>

										<div class="col-xs-5">
											<div class="row">
												<?php $tab_img = get_sub_field('image'); ?>
												<img class="img-responsive" src="<?php echo $tab_img['url']; ?>" alt="<?php echo $tab_img['alt']; ?>" />
											</div>
										</div>
									</div>
								<?php $ctr++;
								endwhile; ?>
							</div>
						<?php endif; ?>
					</div>
				</div>
			</div>

			<div class="mobile-product-line">
				<?php if( have_rows('product_line') ): $ctr = 1; ?>
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<?php while ( have_rows('product_line') ) : the_row(); ?>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading_<?php echo $ctr; ?>">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse_<?php echo $ctr; ?>" aria-expanded="true" aria-controls="collapse_<?php echo $ctr; ?>">
											<?php the_sub_field('heading'); ?>
										</a>
									</h4>
								</div>
								<div id="collapse_<?php echo $ctr; ?>" class="panel-collapse collapse <?php if($ctr == 1) { ?>in<?php } ?>" role="tabpanel" aria-labelledby="heading_<?php echo $ctr; ?>">
									<div class="panel-body">
										<?php $accord_img = get_sub_field('image'); ?>
										<img class="img-responsive" src="<?php echo $accord_img['url'] ?>" alt="<?php echo $accord_img['alt'] ?>" />
										<?php echo wpautop(get_sub_field('content')); ?>
									</div>
								</div>
							</div>
						<?php $ctr++;
						endwhile; ?>
					</div>
				<?php endif; ?>
			</div>

		</div>
	</div>
</section>

<!-- <section class="latest-collection">
	<div class="container">
		<h2 class="about-section-header"><?php the_field('about_latest_heading'); ?></h2>
		<div class="row">
			<div class="latest-slider">
				<div class="latest-item">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/product1.jpg" />
					<div class="content">
						<h3>The Superstar</h3>
						<a href="#">View Products</a>
					</div>
				</div>

				<div class="latest-item">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/product2.jpg" />
					<div class="content">
						<h3>The Superstar</h3>
						<a href="#">View Products</a>
					</div>
				</div>

				<div class="latest-item">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/product3.jpg" />
					<div class="content">
						<h3>The Superstar</h3>
						<a href="#">View Products</a>
					</div>
				</div>

				<div class="latest-item">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/product4.jpg" />
					<div class="content">
						<h3>The Superstar</h3>
						<a href="#">View Products</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section> -->

<?php get_footer(); ?>






























