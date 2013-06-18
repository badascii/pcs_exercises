var bob = function(input) {
    var lastChar = input.substring(input.length -1);
    if (lastChar === "?") {
        console.log("Sure.");
    } else if (lastChar === lastChar.toUpperCase()) {
        console.log("Whoa, chill out!");
    } else if (input.null) {
        console.log("Fine. Be that way!");
    } else {
        console.log("Whatever.");
    };
};

bob("hello?");