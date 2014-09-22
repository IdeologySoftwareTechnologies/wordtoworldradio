# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 $('.slide').click(function() {
   $(".slide").each(function(i,elem) { // clear the style first
     $(elem).removeClass("clicked");
   });//so only ONE element is coloured SELECTED
   $(this).addClass("clicked");//add the "selected" colour
});

$('.slide').hover(
   function() {
    if(!$(this).hasClass("clicked")) //check flag
    {//then hover
     $(this).animate({
         background: url(images.png) bottom right no-repeat;padding-left: 10px !important;
     }, 300);
    }
   }, 
  function() {
   if(!$(this).hasClass("clicked")) {
     $(this).animate({
         background: url(images.png) bottom right no-repeat;padding-left: 10px !important;
     }, 200);
     }
    }
);​