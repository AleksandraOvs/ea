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

<?php if ($order_shortcode = carbon_get_theme_option('crb_order_shortcode')) {
?>

    <div class="hidden">
        <div class="popup-order" id="popup-order">
            <?php //echo $popup_sale_short 
           
                echo do_shortcode(" $order_shortcode ");
           
            ?>
            <?php //echo do_shortcode('[contact-form-7 id="72c1f3a" title="Contact form 1"]'); ?>
        </div>
    </div>
<?php
}
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

	<?php
                if (current_user_can('administrator')) {
                ?>
                    <div class="show-temp"><?php echo get_current_template(); ?> </div>
                <?php
                }
				?>

</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>