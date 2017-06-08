 $(document).ready(function() {

  $('.remove_item').on('click', function(){
    var id = $(this).attr('id')
    downQuantity(id);
    $('.cart-items').html(parseInt($('.cart-items').html().match(/\d+/)[0]) - 1);
  });

  function downQuantity(id) {
    $.ajax({
      url: '/downquantity',
      type: 'POST',
      dataType: 'json',
      data: id,
      success: function(data) {
        $('#' + id).html((parseInt($('#' + id).html().split(' x')[0]) - 1) + ' x');
        updatePrice();
      }
    })
  }

  $('.add_item').on('click', function(){
    var id = $(this).attr('id')
    upQuantity(id);
    $('.cart-items').html(parseInt($('.cart-items').html().match(/\d+/)[0]) + 1);
  });


  function upQuantity(id) {
    $.ajax({
      url: '/upquantity',
      type: 'POST',
      dataType: 'json',
      data: id,
      success: function(data) {
        $('#' + id).html((parseInt($('#' + id).html().split(' x')[0]) + 1) + ' x');
        updatePrice();
      }
    })
  }

  function updatePrice() {
    $.ajax({
      url: '/total_price',
      dataType: 'json',
      success: function(data) {
      $('#total').html("TOTAL AMOUNT : " + data + '€');
      console.log(data);
      }
    })
  }


  $('#take_away').on("click", function() {
    $('#img_take_away').addClass('deliver_select');
    $('#img_delivery').removeClass('deliver_select');
    $('#pending_orders').fadeIn(500, function() {
      $('#take_away').trigger('orders-shown');
    });
    document.getElementById("order_delivery_type").value = "false";
  });
  $('#delivery').on('click', function() {
    $('#img_delivery').addClass('deliver_select');
    $('#img_take_away').removeClass('deliver_select');
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
