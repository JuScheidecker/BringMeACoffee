$(document).ready(function(){

  if (parseInt($("#cart-red-circle").text()) > 0) {
    $("#cart-red-circle").toggleClass('cart-hidden');
  };

  $('.add-button').click(function() {
    if (parseInt($("#cart-red-circle").text()) == 0) {
      $("#cart-red-circle").toggleClass('cart-hidden'); // switch on the red-circle
      $("#icon-basket-status").toggleClass('icon-basket'); // changes the basket icon...
      $("#icon-basket-status").toggleClass('icon-basket-loaded'); //... for the basket loaded icon
    };
    $("#cart-red-circle").text(parseInt($("#cart-red-circle").text()) + 1);
  });

});

