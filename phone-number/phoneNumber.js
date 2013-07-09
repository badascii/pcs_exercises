


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

var areaCode = function(string) {
  var area = string.substring(0, 3);
  return area;
};

var toString = function(string) {
  section1 = string.substring(0, 3);
  section2 = string.substring(3, 6);
  section3 = string.substring(6, 10);

  return "(" + section1 + ") " + section2 + "-" + section3;

};

var abc = "(999)666-6666";
var cde = "12345678901";
var zxc = "23409213412094720943";
var yyy = "3428201484";

console.log(toString(yyy));
