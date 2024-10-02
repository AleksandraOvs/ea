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

			<?php
			if ($footer_links = carbon_get_theme_option('crb_footer_links')) {
			?>
				<ul class="messengers-list">
					<?php
					foreach ($footer_links as $footer_link) {
						$link_img = wp_get_attachment_image_url($footer_link['crb_footer_link_img'], 'full')
					?>
						<li class="messengers-list__item">
							<a href="<?php echo $footer_link['crb_footer_link_link'] ?>" class="messengers-list__item__link">
								<img src="<?php echo $link_img; ?>" alt="<?php echo $footer_link['crb_link_name'] ?>">
							</a>
						</li>
					<?php
					}
					?>
				</ul>
			<?php
			}
			?>

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

	</div>

</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>