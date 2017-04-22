
(function($) {
    "use strict";

    var Core = {

        initialized: false,

        initialize: function()
        {
            if (this.initialized) return;
            this.initialized = true;

            this.build();
        },

        build: function()
        {
            $('#clouds').parallax();

            this.initScroll();
            this.initOwlCarousel();
            this.initInputMasks();
        },

        initScroll: function()
        {
            $('a[href*="#"]:not([href="#"]):not([role="tab"])').click( function()
            {
                if(location.pathname.replace( /^\//,'' ) == this.pathname.replace( /^\//,'' ) && location.hostname == this.hostname) {
                    Core._scrollWindow( this.hash );
                    return false;
                }
            });
        },

        _scrollWindow: function(hash)
        {
            var target = $( hash );
            target = target.length ? target : $( '[name=' + hash.slice(1) +']' );

            if (target.length) {
                var offset = target.offset().top;
                $('html,body').animate({ scrollTop: offset }, 800);
            }
        },

        initOwlCarousel: function ()
        {
            $("#carousel-highlights").owlCarousel({
                loop: true,
                items: 1,
                margin: 5,
                dots: false,
                nav: true,
                navText: ['',''],
                autoplay: true,
                autoplayTimeout: 4000,
                autoplayHoverPause: true,
                smartSpeed: 800,
            });
        },

        initInputMasks: function()
        {
            var SPMaskBehavior = function (val) {
                    return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
                },
                spOptions = {
                    onKeyPress: function(val, e, field, options) {
                        field.mask(SPMaskBehavior.apply({}, arguments), options);
                    }
                };

            $('.mask-phone').mask(SPMaskBehavior, spOptions);
            $('.mask-date').mask("00/00/00");
            $('.mask-cpf').mask("000.000.000-00");
            $('.mask-cep').mask("00000-000");
        },
    }

    Core.initialize();

})(jQuery);
