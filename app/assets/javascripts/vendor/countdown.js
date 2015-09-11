$(document).ready(function() {
  $("input[type='radio']:eq(0)").prop("checked", true);


  $('#timer').countdown({
    digits: 4,
    number: 10000,
    duration: 10000,
    animateTo: 0
  }).on('countdown:finished', function(event, data){
      $('form').submit();
  });
});





