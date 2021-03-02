require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#cult
c1 = Cult.new("Fruity Pebbles Cult", "TX", "Serial Cereal Killers", 1997)
c2 = Cult.new("Dog Lovers Cult", "CA", "Man's Best Friend", 1950)
c3 = Cult.new("Yoga On Tuesdays", "NY", "It's Just Yoga on Tuesdays", 2015)

#follower
f1 = Follower.new("Patrick", 25, "is mayonnaise an instrument?")
f2 = Follower.new("Spongebob", 21, "(iconic spongebob laugh)")
f3 = Follower.new("Squidward", 80, "no Patrick, mayonnaise is not an instrument")

#bloodoath
b1 = BloodOath.new(2000-03-2, c1, f1)
b2 = BloodOath.new(1990-03-2, c2, f2)
b3 = BloodOath.new(2015-03-2, c3, f3)
b4 = BloodOath.new(2000-03-5, c1, f2)
b5 = BloodOath.new(2015-03-5, c3, f2)
b6 = BloodOath.new(2021-03-2, c3, f3)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits