$(function(){
  $(".btn").on("click",function(){
    $(".snip1").fadeToggle();

 });
 $(".btn").on("click",function(){
   if($(this).html() == '-') {
     $(this).html('+');
   }else{
     $(this).html('-');
   }
});
});


$(function(){
  $(".btn1").on("click",function(){
    $(".snip2").fadeToggle();

 });
 $(".btn1").on("click",function(){
   if($(this).html() == '-') {
     $(this).html('+');
   }else{
     $(this).html('-');
   }
});
});



$(function(){
  $(".btn2").on("click",function(){
    $(".snip3").fadeToggle();

 });
 $(".btn2").on("click",function(){
   if($(this).html() == '-') {
     $(this).html('+');
   }else{
     $(this).html('-');
   }
});
});

