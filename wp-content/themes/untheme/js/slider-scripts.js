const heroSwiper = new Swiper('.hero-slider', {
    slidesPerView: 1,
    //loop: true,
    effect: 'fade',
    grabCursor: true, 
    direction: 'vertical',
    navigation: {
    nextEl: '.hero-slider__button-next',
    prevEl: '.hero-slider__button-prev',
    },
  
  });