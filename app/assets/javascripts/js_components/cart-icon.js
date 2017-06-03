$(document).ready(function(){

  if (parseInt($("#cart-red-circle").text()) > 0) {
    $("#cart-red-circle").toggleClass('cart-hidden');
  };

});

