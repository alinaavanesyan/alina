$(function() { const triggerSelector = '.ic4f-mtrig';
  const modalId = 'modal';
  const smallSuffix = '-s';
  const fileExt = '.jpg';
  const $modal = $('#modal');
  const $modalImg = $('#modal-img');
  const $modalCap = $('#modal-caption');

  $(triggerSelector).each(function(){ 
    var $img = $(this);
    var srcSmall = $img.attr('src');
    var srcLarge = srcSmall; //use same src as default

    // build large image url
    var pos = srcSmall.lastIndexOf(smallSuffix + fileExt);
    if (pos != -1) {
      srcLarge = srcSmall.substring(0, pos) + fileExt;
    }

    $($img).on('click', function() {
      // change src attribute to large image
      $modalImg.attr('src', srcLarge);
      // set caption if one exists
      setCaption($img);

      $modal
        // show modal
        .fadeIn(100)
        // attach click event handler
        .on('click', function() {
          $modal.fadeOut(100); // close modal
          $modalImg.attr('src', '#');
          $modalCap.text(''); // reset caption
        });
    });
  });

  function setCaption($myimg) {
    // check if there exists a parent figure element
    $figure = $myimg.closest('figure')
    if ($figure.length) {
      // check if this figure has a caption
      $caption = $figure.find('figcaption');
      if ($caption.length) {
        $modalCap.html($caption.html());
      }
    }
  }
});
