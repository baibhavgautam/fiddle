class Comment < ActiveRecord::Base
  belongs_to :page

  belongs_to :parent_comment,
    :class_name => 'Comment',
    :foreign_key => 'comment_id'

  has_many :child_comments,
    class_name: "Comment",
    foreign_key: "comment_id"

end
