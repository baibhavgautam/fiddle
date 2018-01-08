# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a couple pages
# Create several parent comments
# Create several child comments

Page.destroy_all
Comment.destroy_all

first_page = Page.create(
  title: 'TITLE OF PAGE ONE',
  body: 'BODY OF PAGE ONE'
)

second_page = Page.create(
  title: 'TITLE OF PAGE TWO',
  body: 'BODY OF PAGE TWO'
)

comment_one = Comment.create(
  author_email: 'lorem@ipsum.com',
  body: 'I am a huge fan of this page',
  page_id: first_page.id)

comment_two = Comment.create(
  author_email: 'lorem@ipsum.com',
  body: 'Wow I love it!',
  page_id: first_page.id
)

comment_three = Comment.create(
  author_email: 'lorem@ipsum.com',
  body: 'Where did you find that image?',
  page_id: second_page.id
)
comment_three = Comment.create(
  author_email: 'lorem@ipsum.com',
  body: 'Where did you find that image?',
  page_id: second_page.id
)

comment_one_reply_one = Comment.create(
  author_email: 'rick@morty.com',
  body: 'Me too! This is good stuff!',
  comment_id: comment_one.id
)

comment_one_reply_two = Comment.create(
  author_email: 'peter@griffin.com',
  body: 'So Awesome',
  comment_id: comment_one.id
)
