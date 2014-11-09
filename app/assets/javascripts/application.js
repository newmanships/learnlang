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
jQuery(document).ready(function($) {
  
  // For 'take quiz' box at bottom of lesson
var footer = $('#footer'),
extra = 10; // In case you want to trigger it a bit sooner than exactly at the bottom.

footer.css({ opacity: '0', display: 'block' });

$(window).scroll(function() {
       
   var scrolledLength = ( $(window).height() + extra ) + $(window).scrollTop(),
       documentHeight = $(document).height();

    
//     console.log( 'Scroll length: ' + scrolledLength + ' Document height: ' + documentHeight )
       
        
   if( scrolledLength >= documentHeight ) {
       
       footer
          .addClass('bottom')
          .stop().animate({ bottom: '0', opacity: '1' }, 300);

   }
   else if ( scrolledLength <= documentHeight && footer.hasClass('bottom') ) {           
        footer
           .removeClass('bottom')
           .stop().animate({ bottom: '-100', opacity: '0' }, 300);

   } 
});

});

