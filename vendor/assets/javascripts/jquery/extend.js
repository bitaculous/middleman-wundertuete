(function($) {
  $.fn.present = function() { // Helper to test whether an element exists
    return $(this).length;
  };
})(jQuery);