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
age = gets.to_i
puts ("In 10 years, you will be: #{age + 10}\nIn 20 years, you will be: #{age + 20}\nIn 30 years, you will be: #{age + 30}\nIn 40 years, you will be: #{age + 40}")