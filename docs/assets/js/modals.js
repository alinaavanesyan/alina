$(function() { const triggerSelector = '.ic4f-mtrig';
  var modalId = 'modal';
  var smallSuffix = '-s';
  var fileExt = '.jpg';
  var $modal = $('#modal');
  var $modalCap = $('#modal-caption');

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
      var modalImgId = '#modal-img';
      if ($(modalImgId).length === 0) {
        $('<img id="modal-img" alt=" ">').prependTo('#modal');
        var $modalImg = $(modalImgId);
      }

      $modalImg.attr('src', srcLarge);
      setCaption($img);

      $modal
        .fadeIn(100)
        .on('click', function() {
          $modal.fadeOut(100); // close modal
          $modalCap.text('');  // reset caption
          $modalImg.remove();  // remove large img from tree
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
