var aprsApp = angular.module("aprsApp",['ui.bootstrap'])

$(document).ready(function() {
  $('[data-toggle=offcanvas]').click(function() {
    $('.row-offcanvas').toggleClass('active');
  });
});