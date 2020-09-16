import Typed from "typed.js";


$("#myModal").on("shown.bs.modal", function () {
  $("#myInput").trigger("focus");
});

var typed6 = new Typed(".banner_title", {
  strings: [
    "Les données d’impact environnemental au plus près des usages des citoyens",
  ],
  typeSpeed: 30,
  backSpeed: 0,
  loop: false,
  onStringTyped: function () {
    return elem.siblings(".typed-cursor").remove();
  },
});

$(function () {
  $('[data-toggle="popover"]').popover()
});
