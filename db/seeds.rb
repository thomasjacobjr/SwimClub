# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'random_data'
User.destroy_all
Page.destroy_all

home = Page.create!(
  menu_title: "Home",
  title: "Sun City Festival Swimmer's Club",
  body: "Temporary Home Page Text. Lorbo is Boss Man Status Achieved."
)

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

photos = Page.create!(
  menu_title: "Photos",
  title: "Photos",
  body: "A list of photos will be implemented here eventually!"
)

videos = Page.create!(
  menu_title: "Videos",
  title: "Video Gallery",
  body: "Here we shall have a video gallery showcasing Lorbo's supreme supremeness."
)

records = Page.create!(
  menu_title: "Records",
  title: "Swim Club Team Member Records",
  body: "Some sort of records database"
)

admin = User.new(
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  admin: true
)

standard = User.new(
  email: "standard@test.com",
  password: "password",
  password_confirmation: "password",
  admin: false
)

admin.skip_confirmation!
admin.save
standard.skip_confirmation!
standard.save

puts "Seeds finished"
