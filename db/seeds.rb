# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.create! title: 'First post', content: "Playing with accepts_nested_attributes_for"
post.comments << Comment.create!(content: "Update me please!")
post.comments << Comment.create!(content: "Yeah, me too please!")
post.comments << Comment.create!(content: "If you don't mind, I'd like to also.")
