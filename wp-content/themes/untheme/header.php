<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package untheme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>
	<div id="page" class="site">
		<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e('Skip to content', 'untheme'); ?></a>

		<header id="masthead" class="site-header">
			<div class="fixed-container">
				<div class="site-branding">
					<?php
					 $header_logo = get_theme_mod('header_logo');
					 $img = wp_get_attachment_image_src($header_logo, 'full');
					 if ($img) : echo '<a class="custom-logo-link" href="'.site_url().'"><img src="' . $img[0] . '" alt=""></a>';
					 endif;
					 ?>
					 <?php
					if (is_front_page() && is_home()) :
						?>
						<h1 class="site-title"><a href="<?php echo esc_url(home_url('/')); ?>" rel="home"><?php bloginfo('name'); ?></a></h1>
					<?php
					else :
					?>
						<p class="site-title"><a href="<?php echo esc_url(home_url('/')); ?>" rel="home"><?php bloginfo('name'); ?></a></p>
					<?php
					endif;
					$untheme_description = get_bloginfo('description', 'display');
					if ($untheme_description || is_customize_preview()) :
					?>
						<h1 class="vis-hidden site-description"><?php echo $untheme_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped 
																?></h1>
					<?php endif; ?>
				</div><!-- .site-branding -->

				<div class="site-header__right">
					<div class="site-header__right__contacts">
						<?php get_template_part('template-parts/messengers') ?>

						<?php
						if ($header_link = carbon_get_theme_option('crb_header_link')) {
						?>
							<a href="<?php echo $header_link ?>" class="link">
								<?php
								if ($header_link_text = carbon_get_theme_option('crb_header_link_text')) {
									echo $header_link_text;
								} else {
									echo 'Link';
								}
								?>
							</a>
						<?php

						}
						?>
					</div>
					<nav id="site-navigation" class="main-navigation">
						<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e('Primary Menu', 'untheme'); ?></button>
						<?php
						wp_nav_menu(
							array(
								'theme_location' => 'menu-1',
								'menu_id'        => 'primary-menu',
							)
						);
						?>
					</nav><!-- #site-navigation -->


				</div>


			</div>

		</header><!-- #masthead -->