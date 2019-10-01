// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)



	
$('[data-toggle="collapse"]').on('click', function() {
  var $this = $(this),
          $parent = typeof $this.data('parent')!== 'undefined' ? $($this.data('parent')) : undefined;
  if($parent === undefined) { /* Just toggle my  */
      $this.find('.glyphicon').toggleClass('glyphicon-plus glyphicon-minus');
      return true;
  }

  /* Open element will be close if parent !== undefined */
  var currentIcon = $this.find('.glyphicon');
  currentIcon.toggleClass('glyphicon-plus glyphicon-minus');
  $parent.find('.glyphicon').not(currentIcon).removeClass('glyphicon-minus').addClass('glyphicon-plus');

});

