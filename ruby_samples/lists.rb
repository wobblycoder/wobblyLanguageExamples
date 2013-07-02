data = Array.new

data << 10
data << 4
data.concat([30,42,58])

# They could just do
#
#    data = [1, 2, 35, 12]
#
# as long as they make an array of numbers
# but they'll probably follow the pattern
# in my example, which uses << and concat

# assume the first element is
# both the largest and smallest
smallest = data[0]
largest = data[0]

# setting these to floating point numbers will
# prevent the average answer being computed as 
# an integer
sum = 0.0
average = 0.0

data.each do |num|
   sum = sum + num
   if num < smallest
      smallest = num
   end
   if num > largest
      largest = num
   end
end

average = sum / data.length

puts "list: #{data}"
puts "smallest: #{smallest}"
puts "largest: #{largest}"
puts "average: #{average}"
