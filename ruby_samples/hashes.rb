d = {"apple" => "red",
     "banana" => "yellow"
    }

o = Object.new

ms = d.methods - o.methods
puts ms.join(", ")

d.merge!({"orange" => "orange"})

puts d.keys
puts d.values

if d.include? "apple"
    puts "I have an apple, and it is #{ d["apple"] }."
end

if d.include? "watermelon"
    puts "I have an watermelon, and it is #{ d["watermelon"] }."
else
    puts "I don't have a watermelon."
end    

puts d.index("apple")

d.each do |fruit, color|
    puts "The #{fruit} is #{color}"
end



