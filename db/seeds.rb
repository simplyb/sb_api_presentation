# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'EMPTY THE DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SEEDING THE DATABASE - CREATING USERS'
password = "password123"
puts 'USS Enterprise Listing:'
%w(kirk spock scott sulu).each { |name|
  email = "#{name}@example.com"
  user = User.create! :username => name, :email => email, :password => password, :password_confirmation => password
  puts "Crew Member: #{name}, email: #{email}, password: #{password}"
}


puts 'SEEDING THE DATABASE - CREATING Events'
event = Event.create! :activity_time => "2012-04-23:00:00", :activity_type => "Kirks falls in love, AGAIN"
puts "Event Type: #{event.activity_type}, Event Time: #{event.activity_time}"