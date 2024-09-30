<?php if ($hero_pics = carbon_get_post_meta(get_the_ID(), 'crb_hero_slides')) {
?>
    <section class="hero-section">

        <!-- Slider main container -->
        <div class="swiper hero-slider">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper hero-slider__wrapper">
                <!-- Slides -->
                <?php
                foreach ($hero_pics as $hero_pic) {
                    $hero_pic_url = wp_get_attachment_image_url($hero_pic['crb_hero_img'], 'full');
                    $hero_pic_url_mob = wp_get_attachment_image_url($hero_pic['crb_hero_img_mob'], 'full');
                ?>
                    <div class="swiper-slide hero-slider__slide">
                        <picture>
                            <source srcset="<?php echo $hero_pic_url_mob; ?>" media="(max-width: 768px)">
                            <source srcset="<?php echo $hero_pic_url; ?>" media="(min-width: 769px)">
                            <img src="<?php echo $hero_pic_url; ?>">
                        </picture>

                        
                        <div class="hero-slider__content">
                            <div class="fixed-container">

                            <?php 
                                if ($hero_head = $hero_pic['crb_hero_heading']){
                                    echo '<h2 class="hero-heading">'. $hero_head . '</h2>';
                                }

?>
                                  
                                    
                                   
                            </div>
                        </div>
                       

                    </div>

                <?php
                }
                ?>
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>

            <!-- If we need navigation buttons -->
            <div class="hero-slider__button-prev"></div>
            <div class="hero-slider__button-next"></div>

            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        </div>

    </section>
<?php
}
?>