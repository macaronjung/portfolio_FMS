$(function(){
  $("#topbtn").click(function (e) {
 $('html,body').animate({scrollTop:0}, 300);
e.preventDefault();
  });
});