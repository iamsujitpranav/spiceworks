# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(first_name: "Some", last_name: "user", email: "someuser@gmail.com", password: "123456", gender: "male")
post = user.posts.create(title: "Title1", body: "Content for post")
comment = post.comments.create(body: "this is a comment", user: user)
nested_comment = comment.comments.create(body: "this is nested comment", user: user)
nested_comment2 = comment.comments.create(body: "this is nested comment2", user: user)
nested_comment3 = nested_comment.comments.create(body: "this is nested comment3", user: user)
nested_comment4 = nested_comment3.comments.create(body: "this is nested comment4", user: user)
nested_comment5 = nested_comment2.comments.create(body: "this is nested comment5", user: user)
user2 = User.create(first_name: "Another", last_name: "user", email: "anotheruser@gmail.com", password: "123456", gender: "male")
another_user_comment = post.comments.create(body: "this is a comment", user: user2)
another_user_nested_comment = comment.comments.create(body: "this is nested comment", user: user2)