const heroSwiper = new Swiper('.hero-slider', {
    slidesPerView: 1,
    //loop: true,
    effect: 'fade',
    grabCursor: true, 
    //direction: 'vertical',
    navigation: {
    nextEl: '.hero-slider__button-next',
    prevEl: '.hero-slider__button-prev',
    },

  });

  const portfolioSwiper = new Swiper('.portfolio-slider', {
    slidesPerView: 3,
    spaceBetween: 30,
    //loop: true,
    //effect: 'fade',
    grabCursor: true, 
    //direction: 'vertical',
    // navigation: {
    // nextEl: '.portfolio-slider__button-next',
    // prevEl: '.portfolio-slider__button-prev',
    // },
  
  });