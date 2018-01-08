class Page < ApplicationRecord
  has_many :comments,
  :class_name => 'Comment',
  :foreign_key => 'page_id', dependent: :destroy
end
