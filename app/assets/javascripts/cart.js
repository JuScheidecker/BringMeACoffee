 $(document).ready(function() {
  $('#take_away').on("click", function() {
    $('#pending_orders').fadeIn(500);
    document.getElementById("order_delivery_type").value = "false";
  });
  $('#delivery').on('click', function() {
    $('#pending_orders').fadeOut(300);
    document.getElementById("order_delivery_type").value = "true";
  });

  $('.child_order').on('click', function(event) {
    var child_id = event.currentTarget.getAttribute("data-child-id");
    document.getElementById("order_child_order_id").value = child_id;
  });
})

