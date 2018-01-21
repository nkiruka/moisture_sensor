$(document).ready(function (){
  $(".time-stamp").each(function() {
    let timeStamp = $(this).text();
    $(this).text(moment(timeStamp).format('MMMM Do YYYY, h:mm:ss a')); 
  });
});
