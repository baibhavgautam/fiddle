const performDelayedAction = (action, time) => setTimeout(() => action(), time)

const adjustWidth = () => $('#page-content').toggleClass('col-sm-12 col-sm-9')

const toggleCommentSidebar = () => $('#comment-sidebar').fadeToggle()

$('#comment-toggle-btn').click(e => {
  e.preventDefault()
  $('#page-content').hasClass('col-sm-12')
  ? adjustWidth() && performDelayedAction(toggleCommentSidebar, 200)
  : toggleCommentSidebar() && performDelayedAction(adjustWidth, 200)
})
