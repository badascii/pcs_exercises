describe('balblaba', function() {
  it('should wait', function() {
    $('button').trigger('click');
    waitsFor(function() {
      return $('.box').hasClass('bg-green');
    }, "the div to turn green", 2000);


  });
});