//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap.min
//= require npm
//= require_tree .



$(document).ready(function() {
        $('.meet_the_coven_nav').on('click', function() {
            $("html, body").animate({ scrollTop: $('#brooklyn').position().top }, 1000);
        });
    });

$(document).ready(function() {
        $('.hello').on('click', function() {
            $("#scroll, body").animate({ scrollTop: $('#state_locations1').position().top }, 5000);
        });
    });

