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
m3 = Mood.create :name => 'Miffed'
m4 = Mood.create :name => 'Demonic Period'
m5 = Mood.create :name => 'Beige'
m6 = Mood.create :name => 'Furious'
m7 = Mood.create :name => 'Hoodwinked'
m8 = Mood.create :name => 'Lonesome'
m9 = Mood.create :name => 'Dead'
m10 = Mood.create :name => 'Lazy'
m11 = Mood.create :name => 'YUCK'
m12 = Mood.create :name => 'Forlorn'
puts "#{  Mood.count } moods"

Activity.destroy_all
a1 = Activity.create :name => 'Listen to Music', :theme => 'relaxation'
a2 = Activity.create :name => 'Learn a new recipe', :theme => 'education'
a3 = Activity.create :name => 'Eat Sonoma cinnamon scroll', :theme => 'comfort'
a4 = Activity.create :name => 'Flip off the sun', :theme => 'satisfying gesture'
a5 = Activity.create :name => 'Brood in hot shower', :theme => 'relaxation'

a6 = Activity.create :name => 'Sulk in a small contained space', :theme => 'comfort'
a7 = Activity.create :name => 'Lie on cold floor', :theme => 'relaxation'
a8 = Activity.create :name => 'Listen to scientific podcast', :theme => 'relaxation'
a9 = Activity.create :name => 'Sit in shower and sing Les Miserables I dreamed a Dream under cold water', :theme => 'satisfying gesture'
a10 = Activity.create :name => 'Knock something over dramatically', :theme => 'satisfying gesture'

a11 = Activity.create :name => 'Have a bath', :theme => 'relaxation'
a12 = Activity.create :name => 'Seek out a pleasant smell', :theme => 'relaxation'
a13 = Activity.create :name => 'Light a candle.', :theme => 'relaxation'
a14 = Activity.create :name => 'Swim in a calm ocean', :theme => 'relaxation'
a15 = Activity.create :name => 'Prepare and drink tea very slowly. Hold cup in two hands. Stare out the window. Sigh often.', :theme => 'relaxation'

a16 = Activity.create :name => 'Flick the bean. Beat the meat.  Ménage à Moi ;) ', :theme => 'relaxation'
a17 = Activity.create :name => 'Eat your favourite childhood special dinner', :theme => 'comfort'
a18 = Activity.create :name => 'Wear socks on feet and hands.', :theme => 'comfort'
a19 = Activity.create :name => 'Tightly cacoon self in blanket.', :theme => 'comfort'
a20 = Activity.create :name => 'Watch favourite childhood movie', :theme => 'comfort'

a21 = Activity.create :name => 'Sit on a chair with your nude bottom', :theme => 'goofy'
a22 = Activity.create :name => 'Slide around in socks', :theme => 'goofy'
a23 = Activity.create :name => 'Use hands as binoculars to locate objects.', :theme => 'goofy'
a24 = Activity.create :name => 'Light a candle, blow it out and play with wax', :theme => 'goofy'
a25 = Activity.create :name => 'Put on your active wear and chainsmoke next to an outdoor gym.', :theme => 'goofy'

a26 = Activity.create :name => 'Handwash dishes', :theme => 'menial task'
a27 = Activity.create :name => 'Fold laundry', :theme => 'menial task'
a28 = Activity.create :name => 'Brush hair', :theme => 'menial task'
a29 = Activity.create :name => 'Dust books in bookshelf', :theme => 'menial task'
a30 = Activity.create :name => 'Make your bed', :theme => 'menial task'

a31 = Activity.create :name => 'Hug yourself and kiss each shoulder', :theme => 'satisfying gesture'
a32 = Activity.create :name => 'Faint dramatically onto your bed', :theme => 'satisfying gesture'
a33 = Activity.create :name => 'Touch window and stare mournfully into distance. ', :theme => 'satisfying gesture'
a34 = Activity.create :name => 'Write a kind hand written note to self. Crumple up note. Toss away angrily. Regret throwing away. Retieve it. De-crumple it. Now fold it tenderly. Seal with a kiss. Place under pillow. ', :theme => 'satisfying gesture'
a35 = Activity.create :name => 'Shaka. Shaka on the toilet. Shaka the ceiling. Shaka your knee. ', :theme => 'satisfying gesture'

puts "#{  Activity.count } activities"

puts "Activities and moods"
a1.moods << m1 << m2 <<m8
a2.moods << m1 << m5 
a3.moods << m4 << m1 << m9
a4.moods << m3 << m4 << m6 << m5
a5.moods << m1 << m3 << m4 << m6 
a6.moods << m3 << m1 << m4 << m8 
a7.moods << m2 << m4 << m9 << m3 << m6
a8.moods << m5 << m8 << m8 << m9
a9.moods << m1 << m9 << m7
a10.moods << m4 << m6 << m7
a12.moods << m3 << m9 << m8
a13.moods << m1 << m8 << m9
a14.moods << m2 << m5 << m6 << m7 
a15.moods << m1 << m2 << m3 << m6 << m7 << m8 << m9
a16.moods << m5 << m9 << m8 << m3
a17.moods << m1 << m2 << m4 << m7 << m8 << m9 
a18.moods << m1 << m2 << m7 << m8 
a19.moods << m1 << m2 << m4 << m7 << m8 << m9
a20.moods << m1 << m2 << m5 << m8 << m8
a21.moods << m5 << m9 << m6
a22.moods << m1 << m2 << m3 << m5 << m6 << m7 << m8 << m9
a23.moods << m1 << m2 << m5 << m9 << m10
a24.moods << m1 << m7 << m6 
a25.moods << m3 << m4 << m5 << m6 << m7 << m9
a26.moods << m1 << m2 << m8 
a27.moods << m1 << m2 << m7
a28.moods << m1 << m2 << m3 << m4 << m6 <<m11
a29.moods << m1 << m2 << m9
a30.moods << m1 << m2 << m9
a31.moods << m8 << m1
a32.moods << m1 << m4 << m7
a33.moods << m5 << m9 << m12
a34.moods << m9 
a35.moods << m9 << m6
