(($) ->
  $.fn.present = -> # Helper to test whether an element exists
    return $(this).length
)(jQuery)