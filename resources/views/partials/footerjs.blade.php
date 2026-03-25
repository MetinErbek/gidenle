<!-- js-scripts -->					
<!-- js -->
<script type="text/javascript" src="{{ asset('assets/js/jquery-2.1.4.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/js/bootstrap.js') }}"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<!-- //js -->	

<!-- start-smoth-scrolling -->
<script src="{{ asset('assets/js/SmoothScroll.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/js/move-top.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/js/easing.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){		
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<!-- //here ends scrolling icon -->

<!-- Baneer-js -->
<script src="{{ asset('assets/js/responsiveslides.min.js') }}"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            pager:false,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });
    });
</script>
<!-- //Baneer-js -->

<!-- banner bottom video script -->
<script src="{{ asset('assets/js/simplePlayer.js') }}"></script>
<script>
    $("document").ready(function() {
        $("#video").simplePlayer();
    });
</script>
<!-- //banner bottom video script -->

<!-- Stats-Number-Scroller-Animation-JavaScript -->
<script src="{{ asset('assets/js/waypoints.min.js') }}"></script> 
<script src="{{ asset('assets/js/counterup.min.js') }}"></script> 
<script>
    jQuery(document).ready(function( $ ) {
        @if(session('form_error'))
        $.alert({
            title: '{{ session('form_error_title') ?? 'Alert!' }}',
            content: '{{ session('form_error') }}',
        });
        @endif
        $('.counter').counterUp({
            delay: 100,
            time: 1000
        });
    });
</script>
<!-- //Stats-Number-Scroller-Animation-JavaScript -->


<!-- FlexSlider-JavaScript -->
<script defer src="{{ asset('assets/js/jquery.flexslider.js') }}"></script>
<script type="text/javascript">
    $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider){
                $('body').removeClass('loading');
            }
        });
    });
</script>
<!-- //FlexSlider-JavaScript -->
