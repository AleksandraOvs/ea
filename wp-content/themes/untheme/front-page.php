<?php get_header() ?>

<?php get_template_part('template-parts/hero-block'); ?>

<div class="site-content">
    <section class="section-about background">
        <div class="fixed-container">
            <div class="section-about__content">
                <h2>Аренда декора для Вашего мероприятия</h2>
                <p>Сделайте свое мероприятие незабываемым с нашей арендой декора!
                    Наш разнообразный выбор декоративных элементов поможет вам создать уникальную атмосферу любого события – от свадьбы
                    до корпоратива. Выбирайте из нашего ассортимента, чтобы добавить шарм и стиль вашему празднику.</p>
                <p class="bold">Доверьтесь нам в организации декора, и ваше событие станет незабываемым для всех гостей!</p>
            </div>
        </div>
    </section>

    <?php get_template_part('template-parts/decor-query') ?>


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
                <?php //echo $popup_sale_short 
                if ($contact_form1) {
                    echo '<div class="contact-form-container">' . do_shortcode(" $contact_form1 ") . '</div>';
                }
                ?>
            </div>
        </section>
    <?php
    }
    ?>

    <div class="section section-contacts">
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

                <?php get_template_part('template-parts/messengers') ?>
                
            </div>

        </div>
    </div>



    <?php
    $args = [
        'post_type'  => 'post',
        'post_status' => 'publish',
        'orderby' => 'date',
        'category_name' => 'blog'
    ];
    ?>

    <?php $the_query = new \WP_Query($args);  ?>

    <?php if ($the_query->have_posts()) {
    ?>
        <section class="section-blog">
            <div class="fixed-container">
                <h2>Новости компании</h2>
                <div class="section-blog-container">
                    <?php
                    while ($the_query->have_posts()) {
                        $the_query->the_post();  ?>
                        <?php get_template_part('template-parts/content') ?>
                    <?php }
                    ?>
                </div>
            </div>
        </section>
    <?php

    } ?>

    <?php wp_reset_postdata(); ?>

</div>

<?php get_footer() ?>