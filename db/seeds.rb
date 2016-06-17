# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Page.create(
  title: "Video Workouts",
  body: "Here is the body for the Video Workouts Page",
  menu_title: "Instructional Swimming Workouts"
  )


Page.create(
  title: "Contact Us",
  body: "Here are some contacts for the admin members of the Swim Club",
  menu_title: "Contact List"
)
