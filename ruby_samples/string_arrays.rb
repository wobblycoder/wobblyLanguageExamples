my_list = [
  "milk",
  "bread",
  "eggs",
  "juice"
  ]

puts "unsorted: #{my_list}"

my_list.sort

puts "after a call to .sort :  #{my_list}"

my_list.sort!

puts "after a call to .sort! :  #{my_list}"

my_list.reverse!

puts "after a call to .reverse! :  #{my_list}"

puts "Using .each to iterate (walk through) the list:"

my_list.each do | item |
   puts " -> #{item}"
end

puts "Using .each_with_index to iterate (walk through) the list:"

my_list.each_with_index do | item, indx |
   puts " [ #{indx} ] -> #{item}"
end



  