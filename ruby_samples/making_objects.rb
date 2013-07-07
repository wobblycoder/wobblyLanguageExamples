# a number can do things

x = -12.3

puts "x is #{x}"
puts "the absolute value of x is #{x.abs}"

# so can a string 

s = "Hello, world!"
puts s.upcase

# what if we would like to make a new class of variables, 
# not a string or number, but representing something else?

# for example, what if we wanted to keep track of a player in a game?

# here's how we make a new player

# first, we need to tell Ruby where to find the definition of our class
require_relative 'wobbly_player'

p1 = WobblyPlayer.new

# the next few lines keep track of information about the player
# (we call each distince piece of information an "attribute")

p1.name = "Chris"     # the "name" attribute tells us the player's name

p1.health = 100        # the "health" attribute tells us what % of the player's 
                      #    health is remaining

p1.room = 1           # the "room" attribute, maybe the player can move from 
                      #    room to room

p1.loc_x = 1       # the "loc_x" and "loc_y" attributes 
p1.loc_y = 1       #    tells us where in the current
                   #    room the player is standing 

# the next few lines ask the player to do some stuff.
# each action the player can take is called a method

p1.moves_left         # move the player to the left by a step
p1.takes_damage 10    # uh-oh, the player just got hurt

puts p1.status        # let's see what the player looks like now

