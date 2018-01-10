$('#comment-toggle-btn').click(function(e) {
  e.preventDefault()
  // $('#page-content').html('what?')
  // $(this).toggleClass('flip')
  $('#page-content').toggleClass('col-sm-12')
  $('#page-content').toggleClass('col-sm-9')
  $('#comment-sidebar').toggle()
})
