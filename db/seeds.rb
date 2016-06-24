# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'random_data'

Page.destroy_all

about_page = Page.create!(
  menu_title: "About",
  title: "About the Sun City Festival Swimmer's Club",
  body: "A Body will be here eventually. How exciting! Lorbo is pleased."
)

upcoming_events = Page.create!(
  menu_title: "Upcoming Events",
  title: "Upcoming Swimming Events",
  body: "Here will be list of upcoming events for the swim club. Members will be able to update this page with new events and links"
)

contacts = Page.create!(
  menu_title: "Contacts",
  title: "Contacts",
  body: "A Contact List will be implemented here eventually."
)

puts "Seed finished"
puts "#{about_page.menu_title} page was created"
puts "#{upcoming_events.menu_title} page was created"
puts "#{contacts.menu_title} page was created"
