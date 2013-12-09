// $(document).ready(function(){
//   $('.example-basic').waypoint(function() {
//     alert('Basic example callback triggered.');
//   });
// }, { offset: 'bottom-in-view' });



// $(".example-basic").bind("inview", function(isVisible) {
//   // Event is triggered once the element becomes visible in the browser's viewport, and once when it becomes invisible
//   if (isVisible) {
//     console.log("element #foobar became visible in the browser's viewport");
//   } else {
//     console.log("element #foobar became invisible in the browser's viewport");
//   }
// });



$('.example-basic').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
  if (isInView) {
    // element is now visible in the viewport
    if (visiblePartY == 'top') {
      // console.log("top is visible");
    } else if (visiblePartY == 'bottom') {
      // console.log("bottom is visible");
    } else {
      console.log("whole element is visible");
      $(this).unbind('inview');
    }
  } else {
    console.log("element has left viewport");
  }
});