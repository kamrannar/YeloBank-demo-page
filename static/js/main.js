

function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Daha çox"; 
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Daha az"; 
    moreText.style.display = "inline";
  }}


  // btn cards

  Fancybox.bind("[data-fancybox]", {
    caption: function (fancybox, carousel, slide) {
        return (
          `${slide.index + 1} / ${carousel.slides.length} <br />` + slide.caption
        );
      },
  });