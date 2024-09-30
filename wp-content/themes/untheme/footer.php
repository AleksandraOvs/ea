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
			<?php the_custom_logo(); ?>
			<?php
			if ($address = carbon_get_theme_option('crb_address')) {
				echo '<p>' . $address . '</p>';
			}
			?>

			<?php get_template_part('template-parts/messengers') ?>

		</div><!-- .site-info -->

		<div class="footer-menu__inner">
			<h3>Аренда декора</h3>
			<?php
		wp_nav_menu(
			array(
				'theme_location' => 'services',
				'menu_id'        => 'footer-menu',
			)
		);
		?>
		</div>

		<div class="footer-right">
			<?php 
				if ($decor_img = carbon_get_theme_option('crb_footer_decor')){
					$decor_img_url = wp_get_attachment_image_url($decor_img, 'full');

					echo '<img class="decor-img" src="'.$decor_img_url.'">';
				}
			?>
		</div>
		


	</div>

</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>