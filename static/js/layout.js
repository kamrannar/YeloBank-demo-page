
$( document ).ready(function() {  
    
    $( ".cross" ).hide();
    $( ".menu" ).hide();
    $( ".hamburger" ).click(function() {
    $( ".menu" ).slideToggle( "slow", function() {
    $( ".hamburger" ).hide();
    $( ".cross" ).show();
    $( ".navbar-nav" ).hide()
    $(".head-bottom").css('position','relative')
    });
    });
    
    $( ".cross" ).click(function() {
    $( ".menu" ).slideToggle( "slow", function() {
    $( ".cross" ).hide();
    $( ".hamburger" ).show();
    $( ".navbar-nav" ).show()
    $(".head-bottom").css('position','fixed')
    });
    });
    function hasScrolled() {
      var st = $(this).scrollTop();
      if (st > navbarHeight) {
          $('header').addClass('add_bg');
      } else {
          $('header').removeClass('add_bg');
      }

      if (Math.abs(lastScrollTop - st) <= delta)
          return;
      if (st > lastScrollTop && st > navbarHeight) {
          $('header').addClass('hide_top');
      } else {
          if (st + $(window).height() < $(document).height()) {
              $('header').removeClass('hide_top');
          }
      }
      lastScrollTop = st;
  }
      $(window).scroll(function(){
        $('.head_top').toggleClass('head_top-scrolled', $(document).scrollTop() > 0)
        $('.head_bottom').toggleClass('head_bottom-scrolled', $(document).scrollTop() > 0)
        $('.head_right').toggleClass('head_right_scrolled', $(document).scrollTop() > 0)
        $('.menu_toggle').toggleClass('menu_toggle_scrolled', $(document).scrollTop() > 0)
        $('.o_banking_span').toggleClass('o_banking_span_scrolled', $(document).scrollTop() > 0)
      })
      $(document).on('click', '.menu_toggle', function (e) {
        $("body").toggleClass("open_menu");
        if ($("header").hasClass("hide_top")) {
            $("header").removeClass("hide_top");
        }
    })
    });
