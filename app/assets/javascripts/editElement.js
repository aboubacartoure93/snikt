function updatepictureOnServer(event) {
	var newx = (parseFloat(event.target.style.left) || 0) + event.dx;
	console.log("top is: " + event.target.style.top);
	var newy = (parseFloat(event.target.style.top) || 0) + event.dy;
	var url = event.target.dataset.updateurl;
	$.post(url, {picture: {xpos: newx + "px", ypos: newy + "px"}});

}


function updatepictureOnResize(event) { 
	//get parent's width
	
	var parentwidth = event.target.parentNode.offsetWidth;
	var newWidth = event.rect.width;
	var percentageWidth = parse
}

// target pictures with the "draggable" class
interact('.draggable')
  .draggable({
    // enable inertial throwing
    inertia: true,
    // keep the picture within the area of it's parent
    restrict: {
      restriction: "parent",
      endOnly: true,
      pictureRect: { top: 0, left: 0, bottom: 1, right: 1 }
    },
    // enable autoScroll
    autoScroll: true,

    // call this function on every dragmove event
    onmove: dragMoveListener,
    // call this function on every dragend event
    onend: function (event) {
      var textEl = event.target.querySelector('p');

      textEl && (textEl.textContent =
        'moved a distance of '
        + (Math.sqrt(event.dx * event.dx +
                     event.dy * event.dy)|0) + 'px');
    }
  });

  function dragMoveListener (event) {
    var target = event.target,
        // keep the dragged position in the data-x/data-y attributes
        x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx,
        y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy;

    // translate the picture
    target.style.webkitTransform =
    target.style.transform =
      'translate(' + x + 'px, ' + y + 'px)';

    // update the posiion attributes
    target.setAttribute('data-x', x);
    target.setAttribute('data-y', y);
  }

  // this is used later in the resizing and gesture demos
  window.dragMoveListener = dragMoveListener;

