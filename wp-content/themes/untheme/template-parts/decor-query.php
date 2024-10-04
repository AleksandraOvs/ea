<section class="section-decor">
    <div class="fixed-container">
        <?php
        $args = array(
            'post_type' => 'decor',
            'publish' => true,
            //'cat' => 'decoration'
            //'paged' => get_query_var('paged'),
        );
        query_posts($args);
        if (have_posts()) :
        ?>
            <!-- <h2 class="title title-events animateBlur">Наши мероприятия</h2> -->

            <ul class="decor-list">
                <?php while (have_posts()) : the_post();
                ?>

                    <li class="decor-list__item frombottom">
                        <a class="decor-list__item__link" href="<?php the_permalink() ?>">
                            <?php
                            //должно находится внутри цикла
                            if (has_post_thumbnail()) {
                                the_post_thumbnail();
                            } else {
                                echo '<img src="' . get_stylesheet_directory_uri() . '/images/svg/placeholder.svg" />';
                            }
                            ?>
                            <?php //echo get_the_post_thumbnail() 
                            ?>
                        </a>

                        <div class="decor-list__item__title">
                            <div class="decor-content">
                                <h3><?php the_title() ?></h3>
                            </div>

                        </div>

                    </li>

                <?php endwhile; ?>
                <?php wp_reset_query(); ?>
            </ul>

        <?php endif; ?>
    </div>
</section>