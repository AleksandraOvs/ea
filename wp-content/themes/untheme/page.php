<?php

/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package untheme
 */

get_header();
?>

<main id="primary" class="site-main">

	<section class="page-section">

		<?php
		if (is_active_sidebar('page-sidebar')) { ?>
			<div class="fixed-container _with-sidebar">
			<?php } else {
			echo '<div class="fixed-container">';
		} ?>

			<?php
			while (have_posts()) :
				the_post();

				get_template_part('template-parts/content', 'page');

				// If comments are open or we have at least one comment, load up the comment template.
				if (comments_open() || get_comments_number()) :
					comments_template();
				endif;

			endwhile; // End of the loop.
			?>
			<?php
			if (is_active_sidebar('page-sidebar')) {
				echo '<aside class="page-sidebar">';
				dynamic_sidebar('page-sidebar');
				echo '</aside>';
			} ?>
			</div>
	</section>
</main><!-- #main -->

<?php
get_footer();
