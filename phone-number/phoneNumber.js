


// function PhoneNumber(string) {
//   string.stripChars();
// }

var stripChars = function(string) {
  return string.replace(".", "").replace("(", "").replace(")", "").replace("-", "");
};

var verifyLength = function(string) {
  if (string.length > 11) {
    return "0000000000";
  } else if (string.length < 10) {
    return "0000000000";
  } else if (string.length === 11 && string[0] === "1") {
    return string.substring(1);
  } else {
    return string;
  }
};

var areaCode = function() {

};

var abc = "(999)666-6666";
var cde = "12345678901";

console.log(verifyLength(cde));
