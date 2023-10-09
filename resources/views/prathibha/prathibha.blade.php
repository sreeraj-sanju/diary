<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href='{{asset("/favicon.ico")}}' />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- <meta name="csrf-token" content="{{ csrf_token() }}"> -->
    <meta
      name="description"
      content="Web site created using create-react-app"
    />

    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <link rel="manifest" href='{{asset("/manifest.json")}}' />
    <!-- Bootstrap core CSS -->
    {{-- <!-- <link href='{{asset("vendor/bootstrap/css/bootstrap.min.css")}}' rel="stylesheet"> --> --}}
    <link href='{{asset("assets/prathibha/vendor/bootstrap/css/bootstrap5.min.css")}}' rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href='{{asset("assets/prathibha/css/fontawesome.css")}}'>
    <link rel="stylesheet" href='{{asset("assets/prathibha/css/templatemo-grad-school.css")}}'>
    <link rel="stylesheet" href='{{asset("assets/prathibha/css/owl.css")}}'>
    <link rel="stylesheet" href='{{asset("assets/prathibha/css/lightbox.css")}}'>
    <link rel="stylesheet" type="text/css" href='{{asset("asset/prathibha/vendor/animate/animate.css")}}'>
    <link rel="stylesheet" type="text/css" href='{{asset("asset/prathibha/vendor/css-hamburgers/hamburgers.min.css")}}'>
    <link rel="stylesheet" type="text/css" href='{{asset("asset/prathibha/vendor/select2/select2.min.css")}}'>
    <link rel="stylesheet" href='{{asset("assets/prathibha/css/login.css")}}'>
    <link rel="stylesheet" href='{{asset("assets/prathibha/css/App.css")}}'>
    <link rel="stylesheet" href='{{asset("assets/prathibha/css/util.css")}}'>

    <link
    rel="stylesheet"
    href="{{asset('assets/prathibha/css/animate.min.css')}}"
  />
    <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
    <title>PRATHIBHA</title>
  </head>
  <body>
   
  <header class="main-header clearfix" role="header">
        <div class="logo">
        <img class="sr-logo animate__animated animate__fadeInLeft" alt='no' src="assets/prathibha/images/prathibha.jpg"/>
        </div>
        <div class="logo">
        <img class="sr-logo-icon animate__animated animate__fadeInDown" alt='no' src="assets/prathibha/images/prathibha_logo.jpg"/>
        </div>
        <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
        <nav id="menu" class="main-nav animate__animated animate__lightSpeedInRight" role="navigation">
          <ul class="main-menu">
            <li><a href="{{route('prathibha')}}">Home</a></li>
            <li class="has-submenu"><a href="#section2">Events</a>
              <ul class="sub-menu">
                <li><a href='{{route("quiz")}}'>Quiz Competetion</a></li>
                <li><a href='{{route("prathibha_2022")}}'>Anniversary</a></li>
              </ul>
            </li>
            <li><a href="{{route('lo')}}">Login</a></li>
           <!-- {/* <li><a href="#section6">Contact</a></li> */} -->
          </ul>
        </nav>
      </header>

      @yield('content')
    <!-- Bootstrap core JavaScript -->
    <script src="{{asset('assets/prathibha/vendor/jquery/jquery.min.js')}}"></script>
    <!-- <script src={asset("assets/prathibha/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
    <script src='{{asset("assets/prathibha/vendor/bootstrap/js/bootstrap5.min.js")}}'></script>

    <!-- <script src='{{asset("assets/prathibha/js/isotope.min.js")}}'></script> -->
    <script src='{{asset("assets/prathibha/js/owl-carousel.js")}}'></script>
    <script src='{{asset("assets/prathibha/js/lightbox.js")}}'></script>
    <script src='{{asset("assets/prathibha/js/tabs.js")}}'></script>
    <script src='{{asset("assets/prathibha/js/video.js")}}'></script>
    <script src='{{asset("assets/prathibha/js/slick-slider.js")}}'></script>
    <script src='{{asset("assets/prathibha/js/custom.js")}}'></script>
    <script src='{{asset("assets/prathibha/js/app.js")}}'></script>
<!--===============================================================================================-->
	<script src='{{asset("assets/prathibha/vendor/bootstrap/js/popper.js")}}'></script>
<!--===============================================================================================-->
	<script src='{{asset("assets/prathibha/vendor/select2/select2.min.js")}}'></script>
<!--===============================================================================================-->
	<script src='{{asset("assets/prathibha/vendor/tilt/tilt.jquery.min.js")}}'></script>
  <script>
    $('.js-tilt').tilt({
      scale: 1.1
    })
  </script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
    <!-- <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .scroll-to-section').on('click', 'a', function (e) {
          if($(e.target).hasClass('external')) {
            return;
          }
          e.preventDefault();
          $('#menu').removeClass('active');
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script> -->
  </body>
</html>
