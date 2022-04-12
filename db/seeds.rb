# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Mood.destroy_all
m1 = Mood.create :name => 'Sad'
m2 = Mood.create :name => 'Anxious'
puts "#{  Mood.count } moods"

Activity.destroy_all
a1 = Activity.create :name => 'Listen to Music', :theme => 'relaxation'
a2 = Activity.create :name => 'Learn a new recipe', :theme => 'education'
puts "#{  Activity.count } activities"

puts "Activities and moods"
a1.moods << m1 << m2
a2.moods << m1