 $(document).ready(function() {
  $('#take_away').on("click", function() {
    $('#pending_orders').fadeIn(500);
  });
  $('#delivery').on('click', function() {
    $('#pending_orders').fadeOut(300);
  });
})
