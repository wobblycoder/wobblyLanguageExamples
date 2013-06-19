d = {"apple" => "red",
     "banana" => "yellow"
    }

o = Object.new

ms = d.methods - o.methods
puts ms.join(", ")

d.merge!({"orange" => "orange"})

puts d.keys
puts d.values

puts d.index("apple")


