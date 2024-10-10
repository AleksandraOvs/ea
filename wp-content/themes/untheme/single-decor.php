<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package untheme
 */

get_header();
?>

<main id="primary" class="site-main">
	<section class="page-section">
			<?php
			while (have_posts()) :
				the_post();

				get_template_part( 'template-parts/content', get_post_type() );

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
	</section>
</main><!-- #main -->
<?php
//get_sidebar();
get_footer();
