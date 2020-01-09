import "bootstrap";
import Typed from 'typed.js';


$(function () {
  $('[data-toggle="popover"]').popover()
})


$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})


var typed6 = new Typed('.banner_title', {
    strings: ['Les données d’impact environnemental au plus près des usages des citoyens'],
    typeSpeed: 30,
    backSpeed: 0,
    loop: false
  });
