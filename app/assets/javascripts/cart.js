 $(document).ready(function() {
  $('#take_away').on("click", function() {
    $('#pending_orders').fadeIn(500, function() {
      $('#take_away').trigger('orders-shown');
    });
  });
  $('#delivery').on('click', function() {
    $('#pending_orders').fadeOut(500, function() {
      $('#delivery').trigger('orders-shown');
    });
  });
})
