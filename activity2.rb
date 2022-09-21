#activity 2

#1
arr = [1, 3, 5, 7, 9, 11]
number = 3


#2
puts ("give a number")
number = gets

if 0 < number < 50
    "the number is between 0 and 50"
elsif 50 < number < 100
    "the number is between 51 and 100"
else
    "the number is greater than 100"
end


#3
while gets.chomp != "STOP" do
    puts "tell me something"
end


#4
#to check
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

new_arr = []

def divisible_by_two(array)
    arr.each do |number|
        if number.even?
            new_arr.push(number)
        end
    end
    new_arr
end

puts "#{divisible_by_two(arr)}"