// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

// For end of lesson pop up
$(window).scroll(function () {
        if ($(document).height() <= $(window).scrollTop() + $(window).height()) {
//             $('#quizDropDown').dialog({
//               autoOpen: true,
//               show: {
//                 effect: "blind",
//                 duration: 1000
//               },
//               hide: {
//                 effect: "explode",
//                 duration: 1000
//               }
//             });
          $('#quizDropDown #quizDashboard').slideToggle({
      direction: "up"
    }, 300);
    $(this).toggleClass('quizClose');
        }
});


