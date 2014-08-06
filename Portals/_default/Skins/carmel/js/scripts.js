$(document).ready(function () {
    $('.carousel').carousel({ interval: 5000 });

    $('.nav > li.dropdown > a').click(function (e) {
        var $target = $(e.target);
        var activeNav = $(this).siblings();
        if ($target.is('b')) {
            $(this).siblings().toggle("fast");
            $('.nav > li.dropdown > ul.dropdown-menu:visible').not($(this).siblings()).hide("fast");
            return false;
        }
    });

    $(window).resize(function () {
        // had to add this function for desktop users when the screen is resized to remove classes and attr that 
        // broke the menu from displaying child links when hovering over the parent -- samj
        if ($(window).height() > 980 || $(window).width() > 980) {
            $('.navbar-collapse').removeClass('in');
            $('.dropdown-menu').removeAttr('style');
        }
    });
    $('head').append('<meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1">');
});

