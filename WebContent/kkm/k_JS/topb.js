$(function(){
  $("#topbtn").click(function (e) {
 $('html,body').animate({scrollTop:0}, 530);
e.preventDefault();
  });
});