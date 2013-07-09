$(document).ready(function() {
    changer();
});

var changer = function() {
  $('button').on('click', function() {
    setTimeout(function() {
      $('.changer').addClass('bg-green');
    }, 1000);
  });
};

var twitterJax = function() {
  $.getJSON()
}