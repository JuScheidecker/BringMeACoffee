 $(document).ready(function() {
  $('#take_away').on("click", function() {
    $('#take_away').addClass('img-thumbnail');
    $('#delivery').removeClass('img-thumbnail');
    $('#pending_orders').fadeIn(500, function() {
      $('#take_away').trigger('orders-shown');
    });
    document.getElementById("order_delivery_type").value = "false";
  });
  $('#delivery').on('click', function() {
    $('#delivery').addClass('img-thumbnail');
    $('#take_away').removeClass('img-thumbnail');
    $('#pending_orders').fadeOut(500, function() {
      $('#delivery').trigger('orders-shown');
    });
    document.getElementById("order_delivery_type").value = "true";
  });

  $('.child_order').on('click', function(event) {
    var child_id = event.currentTarget.getAttribute("data-child-id");
    document.getElementById("order_child_order_id").value = child_id;
    $('.child_order').removeClass('selected_child');
    $(this).addClass('selected_child');
  });
})

