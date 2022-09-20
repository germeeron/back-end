#activity 1
#1
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |number|
    puts number
end


#2
h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5


#3
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}


#4
puts ("How old are you?")
age = gets
puts ("In 10 years, you will be: #{age + 10}\nIn 20 years, you will be: #{age + 20}\nIn 30 years, you will be: #{age + 30}\nIn 40 years, you will be: #{age + 40}")


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


#3
while gets.chomp != "STOP" do
    puts "tell me something"
end


#4
#to check
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

new_arr = []

arr.each do |number|
    if number.even?
        new_arr.push(number)
        puts new_arr
    end