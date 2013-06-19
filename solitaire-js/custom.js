var counter = 0;

$(document).ready(function() {
  $('div.square').on('click', function() {
    colorify($(this));
    neighbors($(this));
    counter++;
  });
      // neighbors($(this));
      // if ($('div.square').not('.blue').length === 0) {
      //   $('#congrats').show();
      // } else {
      //   $('#congrats').hide();
      // }

  $('button').on('click', function(){
    $('div.square').removeClass('blue red');
  });
});

  var neighbors = function(square) {
    var row = parseInt(square.data('row'));
    var col = parseInt(square.data('col'));
    var neighbors_array = [$('div[data-row='+(row - 1)+'][data-col='+(col)+']'),
                           $('div[data-row='+(row + 1)+'][data-col='+(col)+']'),
                           $('div[data-row='+(row)+'][data-col='+(col - 1)+']'),
                           $('div[data-row='+(row)+'][data-col='+(col + 1)+']')];
    colorify(neighbors_array);
  };


  var colorify = function(elements) {
    for (var i = 0; i < elements.length; i++) {
      var element = $(elements[i]);
      if (counter % 2 === 0) {
        element.removeClass('red blue').addClass('blue');
      } else {
        element.removeClass('red blue').addClass('red');
      }
    }
  };



// div[row2 column1]

// data(row)

// Make function to make blue the row and columns around the thing that was clicked
// by using data attributes, to subtract 1 row, add 1 row with same column,
// subtract 1 column add 1 column with same row. function will call another function
// that makes things blue.