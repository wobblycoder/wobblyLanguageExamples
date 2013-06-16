rolls = Hash.new(0)

samples = 10000

samples.times { rolls[rand(6) + 1] += 1 }

rolls.keys.sort.each do |face|
    puts "#{face} came up #{rolls[face]} times.  (#{100.0 * rolls[face] / samples}%)"
end