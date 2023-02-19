def valid_integer? (input_string)
    input_string.to_i.to_s == input_string && input_string.to_i != 0
end

def positive_integer? (input_string)
    input_string > 0
end

a = nil
loop do 
puts "Enter an integer:"
a = gets.chomp
break if valid_integer?(a)
puts "Invalid integer"
end

b = nil
loop do 
    puts "Enter an integer:"
    b = gets.chomp
    break if valid_integer?(b) && (positive_integer?(b.to_i) != positive_integer?(a.to_i))
    puts "Invalid integer"
    end

puts "Sum of the two integers is #{a.to_i + b.to_i}"





