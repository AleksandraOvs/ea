<?php get_header() ?>

<?php get_template_part('template-parts/hero-block'); ?>

<div class="site-content">
    <section class="section-about background">
        <div class="fixed-container">
            <div class="section-about__content">
                <?php
                if ($second_heading = carbon_get_post_meta(get_the_ID(), 'crb_second_block_head')) {
                    echo '<h2>' . $second_heading . '</h2>';
                }

                if ($second_block_text = carbon_get_post_meta(get_the_ID(), 'crb_second_block_text')) {
                    echo $second_block_text;
                }
                ?>
            </div>
        </div>
    </section>

    <?php //get_template_part('template-parts/decor-query') ?>
    <?php get_template_part('template-parts/types-query') ?>


    <?php if ($contact_form1 = carbon_get_theme_option('crb_cf')) {
    ?>

        <section class="section-contacts-form">
            <div class="fixed-container _contact-form">
                <?php if ($contact_form_head = carbon_get_theme_option('crb_cf_head')) {
                    echo '<h2>' . $contact_form_head . '</h2>';
                } ?>
                <?php if ($contact_form_text = carbon_get_theme_option('crb_cf_description')) {
                    echo '<p>' . $contact_form_text . '</p>';
                } ?>
                <?php
                if ($contact_form1) {
                    echo '<div class="contact-form-container">' . do_shortcode(" $contact_form1 ") . '</div>';
                }
                ?>
            </div>
        </section>
    <?php
    }
    ?>
    <!-- Вывод портфолио -->

    <?php
    $args = array(
        'posts_per_page' => 4,
        'post_type' => 'portfolio',
        'publish' => true
    );

    $query = new WP_Query($args);

    // Цикл
    if ($query->have_posts()) {
    ?>
        <section class="section-portfolio background">
            <div class="fixed-container">
                <h2 class="section-title">
                    Портфолио
                </h2>
                <?php
                echo '<ul class="archive-list"><li class="archive-list__item">';
                while ($query->have_posts()) {

                    $query->the_post();
                ?>
                    <?php get_template_part('template-parts/content-portfolio') ?>
            <?php
                }
                echo '</li></ul></section>';
            } else {
                // Постов не найдено
            }

            // Возвращаем оригинальные данные поста. Сбрасываем $post.
            wp_reset_postdata();

            ?>

            <div class="section section-contacts" id="contacts">
                <?php
                if ($section_background = carbon_get_post_meta(get_the_ID(), 'crb_contacts_background')) {
                    $section_background_url = wp_get_attachment_image_url($section_background, 'full')
                ?>
                    <img class="section-contacts__img" src="<?php echo $section_background_url ?>" alt="">
                <?php
                } else {
                ?>
                    <img class="section-contacts__img" src="<?php echo get_stylesheet_directory_uri() ?>/images/party-background.jpg" alt="">
                <?php
                };
                ?>
                <div class="fixed-container _section-contacts-container">
                    <div class="section-contacts-container__top">
                        <h2>Контакты</h2>
                        <?php
                        if ($contacts_text = carbon_get_post_meta(get_the_ID(), 'crb_contacts_text')) {
                            echo '<div class="contacts-text">' . $contacts_text . '</div>';
                        }
                        ?>

                        <?php
                        if ($contacts_text2 = carbon_get_post_meta(get_the_ID(), 'crb_contacts_text_border')) {
                            echo '<div class="contacts-border-text">' . $contacts_text2 . '</div>';
                        }
                        ?>

                        <?php if ($phone_num = carbon_get_theme_option('crb_phone_link')) {
                            echo '<span>Телефон:&nbsp;</span><a class="link" href="' . $phone_num . '" >' . carbon_get_theme_option('crb_phone') . '</a>';
                        }
                        ?>

                        <?php
                        if ($contact_links = carbon_get_theme_option('crb_block_contacts_links')) {
                        ?>
                            <ul class="messengers-list">
                                <?php
                                foreach ($contact_links as $contact_link) {
                                    $link_img = wp_get_attachment_image_url($contact_link['crb_block_contacts_link_img'], 'full')
                                ?>
                                    <li class="messengers-list__item">
                                        <a href="<?php echo $contact_link['crb_block_contacts_link_link'] ?>" class="messengers-list__item__link"
                                            <?php
                                            if ($color = $contact_link['crb_block_contact_background']) {
                                                echo 'style="background-color:' . $color . '; outline-color:' . $color . '"';
                                            }
                                            ?>>
                                            <img src="<?php echo $link_img; ?>" alt="<?php echo $contact_link['crb_link_name'] ?>">
                                        </a>
                                    </li>
                                <?php
                                }
                                ?>
                            </ul>
                        <?php
                        }
                        ?>

                    </div>

                </div>
            </div>

            </div>

            <?php get_footer() ?>