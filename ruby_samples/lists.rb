# Let's make an array to hold our numbers
# we could use:
#
#   data = Array.new
#
data = [] 

# Now, let's add some numbers to our array
data << 10
data << 4
data.concat([30,42,58])

# You could just say:
#
#    data = [10, 4, 30, 42, 58]
#
# as long as you make an array of numbers
# but you might find the above patterns
# in my example useful, which use << and concat

# assume the first element is both the largest and smallest
smallest = data[0]
largest = data[0]

# since we're going to want the sum and average,
# we'll create variables to hold those numbers

# when we make them, we'll make sure we know they start
# with good values -- this is called 'initializing' variables

# setting these to floating point numbers 
# (by using 0.0 instead of 0) will insure the
# division calculation doesn't use only integers

# in ruby, there's a difference:
#
#    5 / 2 = 2
#    5 / 2.0 = 2.5
#    5.0 / 2.0 = 2.5

sum = 0.0
average = 0.0

# Now we'll ask our array to repeat a set of steps
# one time for each element in our list, using the 
# each method

# the each method expects a block of code 
# (which we'll supply using a do ... end)

# the each block also gives us (or yields)
# the elements in the array, which we can
# store in a variable (we'll call it num)
# and use insde the block

data.each do |num|

    # now that we're looking at a num from the list
    # we need to add it to the sum

    sum = sum + num

    # we also need to see if the num is 
    # smaller than the smallest we've found so far
    if num < smallest
        smallest = num
    end

    # we also need to see if the num is 
    # bigger than the biggest we've found so far
    if num > largest
        largest = num
    end

    # For the ruby experts out there... 
    #
    # Yes, there are clever ways to use inject and other approaches to 
    # do all of this, but understanding the fundamentals of lists 
    # (especially in a way that translates fairly well to other, less
    # flexible languages) and using numeric comparisons and operations 
    # were my goals for this lesson

end

# Now that we've looked at all the numbers and found the sum, 
# as well as the largest and smallest numbers, let's compute
# the average

average = sum / data.length

# Now that we've found our answers, let's show the user.
# We've got a fancy word for providing information to the
# user, it's called 'output'

puts "list: #{data}"
puts "smallest: #{smallest}"
puts "largest: #{largest}"
puts "average: #{average}"
