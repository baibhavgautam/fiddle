const performDelayedAction = action => setTimeout(() => action(), 200)

const adjustWidth = () => $('#page-content').toggleClass('col-sm-12 col-sm-9')

const toggleCommentSidebar = () => $('#comment-sidebar').fadeToggle()

let count = 0

$('#comment-toggle-btn').click(e => {
  e.preventDefault()
  count++
  (count % 2 === 0)
  ? toggleCommentSidebar() && performDelayedAction(adjustWidth)
  : adjustWidth() && performDelayedAction(toggleCommentSidebar)
})
