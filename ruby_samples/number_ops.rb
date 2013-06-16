x = 8.0
y = 3.0

puts x + y
puts x - y
puts x * y
puts x / y
puts x % y
puts x ** y

puts Math.sqrt(4.0)

puts("Enter a number: ")
m = gets().to_f

puts("Enter a number: ")
n = gets().to_f

ops = "+ - * / % **"

ops.split().each do |op|
   puts "#{m} #{op} #{n} == #{m.send(op, n)}"
end

