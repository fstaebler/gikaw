var w = require("nw.gui").Window.get();
w.showDevTools();

var closeWindow = function () {
  w.close();
};
