require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"
require 'nokogiri'
require 'open-uri'
require 'faker'
require 'rubyg'

# Seed you database with post data from hacker news
# And fake users using Faker gem

puts "Seeding database..."

#TODO: Your code goes here
# 1. create fake users
user = []
4.times do
  user << User.create(name: Faker::Name.name, email: Faker::Internet.email)
end
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

html_file = open("https://news.ycombinator.com/")
html_doc = Nokogiri::HTML(html_file)

posts = {}
ratings = []

html_doc.search('table table tr td.title a').each do |element|
  posts[element.inner_text] = element.xpath('@href').first.value unless element.inner_text == "More"
end

html_doc.search('table table tr td.subtext').each do |element|
  el = element.search('span').inner_text[0].to_i || 0 # handle no-rating case
  ratings << el
end