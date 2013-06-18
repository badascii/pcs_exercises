$(document).ready(function() {
  $('div.square').on('click', function(){
    $(this).toggleClass('blue');
    if ($('div.square').not('.blue').length === 0) {
      $('#congrats').show();
    } else {
      $('#congrats').hide();
    }
  });

  $('button').on('click', function(){
    $('div.square').removeClass('blue');
  });
});