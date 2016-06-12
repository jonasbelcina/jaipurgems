<?php
/*
Template Name: Collections 
*/

get_header();
?>

<div class="container collections">
	<h1 class="about-section-header">Collections</h2>
	<?php
	$args = array(
	    'orderby'           => 'id', 
	    'order'             => 'DESC',
	    'hide_empty'        => false, 
	    'exclude'           => array(), 
	    'exclude_tree'      => array(), 
	    'include'           => array(),
	    'number'            => '', 
	    'fields'            => 'all', 
	    'slug'              => '',
	    'parent'            => '',
	    'hierarchical'      => true, 
	    'child_of'          => 0,
	    'childless'         => false,
	    'get'               => '', 
	    'name__like'        => '',
	    'description__like' => '',
	    'pad_counts'        => false, 
	    'offset'            => '', 
	    'search'            => '', 
	    'cache_domain'      => 'core'
	); 
	$collections = get_terms('collection' , $args);

	foreach($collections as $collection) {
		$image = get_field( 'collection_image' , 'collection_'.$collection->term_id ); ?>
		<div class="collection">
			<img src="<?php echo $image['url']; ?>" />
			<a href="<?php echo get_term_link(intval($collection->term_id), 'collection'); ?>" class="overlay">
				<div class="content">
					<h2><?php echo $collection->name; ?></h2>
					<h3>View Collection</h3>
				</div>
			</a>
		</div>

	<?php
	}
	?>

</div>

<?php
	get_footer();
?>

