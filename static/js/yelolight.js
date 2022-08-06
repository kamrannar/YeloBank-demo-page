// used for yelolight page

Fancybox.bind("[data-fancybox]", {
    caption: function (fancybox, carousel, slide) {
        return (
          `${slide.index + 1} / ${carousel.slides.length} <br />` + slide.caption
        );
      },
  });


const faqs =document.querySelectorAll(".faq");
faqs.forEach((faq) => {
    faq.addEventListener("click", () => {
        faq.classList.toggle("active");
    });
});


$('.kh').click(function(){

  $('.karthaqqinda').show()
  $('.senedler').hide()
  $('.sualcavab').hide()

})

$('.s').click(function(){

  $('.karthaqqinda').hide()
  $('.senedler').show()
  $('.sualcavab').hide()

})

$('.c').click(function(){

  $('.karthaqqinda').hide()
  $('.senedler').hide()
  $('.sualcavab').show()

})

