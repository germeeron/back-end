#activity 7

def get_minimum(array)
    smallest_number = array[0]          # initialize
    array.each do |number|              # loop
        if number < smallest_number
            smallest_number = number
        end
    end
    smallest_number                     # return
end

array1 = [34, 15, 88, 2]
puts "#{get_minimum(array1)}"

array2 = [34, -345, -1, 100]
puts "#{get_minimum(array2)}"