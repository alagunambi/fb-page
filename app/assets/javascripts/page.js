$(document).ready(function() {
  $("span.chronology").timeago();
  $(".expander").expander({
    slicePoint: 260,
    preserveWords: true,
    expandText: 'read more',
    expandPrefix: '&hellip; ',
  });
});