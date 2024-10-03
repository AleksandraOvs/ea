<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package untheme
 */

?>

<footer id="colophon" class="site-footer">
	<div class="fixed-container">
		<div class="site-info">
			<?php
			$footer_logo = get_theme_mod('footer_logo');
			$img = wp_get_attachment_image_src($footer_logo, 'full');
			if ($img) : echo '<img class="footer-logo-img" src="' . $img[0] . '" alt="">';
			endif;
			?>
			<?php
			if ($address = carbon_get_theme_option('crb_address')) {
				echo '<p>' . $address . '</p>';
			}
			?>

			<?php get_template_part('template-parts/messengers') ?>

			

		</div><!-- .site-info -->

		<div class="footer-menu__inner">
			<?php
			wp_nav_menu(
				array(
					'theme_location' => 'services',
					'menu_id'        => 'footer-menu',
				)
			);
			?>
		</div>

	</div>

</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>