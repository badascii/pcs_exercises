describe('balblaba', function() {
  it('should wait', function() {
    $('button').trigger('click');
    waitsFor(function() {
      var actual = $('.changer').css('background-color');
      var expected = 'green';
      return actual == expected
    }, "The div turned green", 150);

    // runs(function( {

    // })
  });
});