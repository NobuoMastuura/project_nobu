$(function(){
   $(".thumbnail").on('mouseover touchend',function(){
     var dataUrl = $(this).attr('data-url');
     $("#main-image").attr('src',dataUrl);
   });
});
