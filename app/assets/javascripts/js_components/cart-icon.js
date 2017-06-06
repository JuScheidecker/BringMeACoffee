$(document).ready(function(){

  if (parseInt($("#cart-red-circle").text()) > 0) {
    $("#cart-red-circle").toggleClass('cart-hidden');

  };

  $('.add-button').click(function() {
  var toto = document.getElementById("cart-link").getAttribute("data-link");
  var test = "/shops/" + toto + "/cart";

    if (parseInt($("#cart-red-circle").text()) == 0) {
      $("#cart-red-circle").removeClass('cart-hidden'); // switch on the red-circle
      $("#icon-basket-status").toggleClass('icon-basket'); // changes the basket icon...
      $("#cart-link").attr("href", test);
      $("#icon-basket-status").off();
      $("#icon-basket-status").toggleClass('icon-basket-loaded'); //... for the basket loaded icon
  };

    $("#cart-red-circle").text(parseInt($("#cart-red-circle").text()) + 1);

  });

  $('.icon-basket').hover(function(){
      $('#darkvador').toggleClass('visible-message');
  });

});
