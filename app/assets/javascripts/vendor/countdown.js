$(document).ready(function() {
  $('#timer').countdown({
    digits: 5,
    number: 5000,
    duration: 5000,
    animateTo: 0
  }).on('countdown:finished', function(event, data){
    $('form').submit();
  });;
});





