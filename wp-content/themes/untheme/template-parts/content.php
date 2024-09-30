<?php

/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package untheme
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>



	<?php untheme_post_thumbnail(); ?>
	<div class="entry-meta">
		<?php
		untheme_posted_on();
		//untheme_posted_by();
		?>
	</div><!-- .entry-meta -->
	<?php
	if (is_singular()) :
		the_title('<h3 class="post-title">', '</h3>');
	else :
		the_title('<h2 class="entry-title"><a href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></h2>');
	endif;

	if ('post' === get_post_type()) :
	?>

	<?php endif; ?>

</article><!-- #post-<?php the_ID(); ?> -->