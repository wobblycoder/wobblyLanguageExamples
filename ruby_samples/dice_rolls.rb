rolls = Hash.new(0)

samples = 10000

samples.times do
   roll = (rand() * 6 + 1).to_i
   rolls[roll] += 1  
end


rolls.sort.each do |roll|
   puts "#{roll[0]} came up #{roll[1]} times.  (#{100.0 * roll[1] / samples}%)"
end