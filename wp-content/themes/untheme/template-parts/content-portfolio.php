<?php

/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package untheme
 */

?>

<a href="#" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="portfolio-thumb">

		<?php if (has_post_thumbnail()) {

			the_post_thumbnail(
				'post-thumbnail',
				array(
					'alt' => the_title_attribute(
						array(
							'echo' => false,
						)
					),
				)
			);
		} else {
			echo '<img src="' . get_stylesheet_directory_uri() . '/images/svg/placeholder-ea.svg" />';
		}
		?>

	</div>

	<div class="article-content">


		<?php
		if (is_singular()) :
			the_title('<h3 class="post-title">', '</h3>');
		else :
			the_title('<h2 class="entry-title"><a href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></h2>');
		endif;

		if ('post' === get_post_type()) :
		?>
		<?php endif; ?>
		<!-- <ul class="breadcrumbs__list">
						<?php //echo site_breadcrumbs(); 
						?>
					</ul> -->




		<?php //the_content() 
		?>
	</div>


</a><!-- #post-<?php the_ID(); ?> -->