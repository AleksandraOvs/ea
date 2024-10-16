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
    slidesPerView: 1,
    spaceBetween: 0,
    //loop: true,
    //effect: 'fade',
    grabCursor: true, 
    //direction: 'vertical',
    navigation: {
    nextEl: '.portfolio-slider__button-next',
    prevEl: '.portfolio-slider__button-prev',
    lockClass: 'hide-navi'
     },
     breakpoints: {
      // when window width is >= 320px
      576: {
          slidesPerView: 3,
          spaceBetween: 30,
          //slideToClickedSlide: true,
      },
  }
  
  });

  const decorSwiper = new Swiper('.decor-slider', {
    slidesPerView: 1,
    spaceBetween: 0,
    //loop: true,
    //effect: 'fade',
    grabCursor: true, 
    //direction: 'vertical',
    navigation: {
    nextEl: '.decor-slider__button-next',
    prevEl: '.decor-slider__button-prev',
    lockClass: 'hide-navi'
     },
//      breakpoints: {
//       // when window width is >= 320px
//       768: {
//           slidesPerView: 1,
//           spaceBetween: 30,
//           //slideToClickedSlide: true,
//       },
//   }
  
  });